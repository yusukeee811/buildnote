class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :image

  validate  :image_type

  VALID_NAME_REGEX = /\A[a-zA-Z0-9_-]+\z/.freeze
  validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 17 }, format: { with: VALID_NAME_REGEX, message: "は半角英数字(ハイフン-アンダーバー_含む)で入力してください"}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # nilでもバリデーションが行われるようにallow_blank: trueを記述する
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: "は半角英数字混合で入力してください", allow_blank: true }

  enum status: { active: 0, withdrawal: 1, force_withdrawal: 2 }

  has_many :posts,         dependent: :destroy
  has_many :post_likes,    dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :trainings,     dependent: :destroy
  # フォローした時の関係
  has_many :relationships,            class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  # フォローされた時の関係
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  # フォロー、フォロワー一覧画面で使用
  has_many :followings, through: :relationships,            source: :followed
  has_many :followers,  through: :reverse_of_relationships, source: :follower

  def self.guest
    # ゲストユーザーが存在する場合は、既存のゲストユーザーをログインさせる
    # 存在しない場合は、新しいゲストユーザーを作成する
    find_or_create_by(name: 'guest', email: 'guest@example.com') do |user|
    #パスワードは特定されないようにランダムパスワード
      user.password = SecureRandom.urlsafe_base64
    end
  end

  def get_profile_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no-image.png')
      image.attach(io: File.open(file_path), filename: 'no-image.png', content_type: 'image/png')
    end
      image.variant(resize_to_fill: [width, height]).processed
  end

  # フォロー時の処理
  def follow(user_id)
    relationships.create(followed_id: user_id)
  end
  # フォロー解除時の処理
  def unfollow(user_id)
    relationships.find_by(followed_id: user_id).destroy
  end
  # フォローしているか判定
  def following?(user)
    followings.include?(user)
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "id", "name", "remember_created_at", "reset_password_sent_at", "reset_password_token", "status", "updated_at"]
  end

  # 強制退会時にデータを削除する処理
  def delete_related_data
    ActiveRecord::Base.transaction do #データベースロック回避
      self.posts.destroy_all
      self.post_comments.destroy_all
      self.post_likes.destroy_all
      self.relationships.destroy_all
    end
  end

  def active_for_authentication?
    super && (status == "active")
  end

  private

  def image_type
    if image.present? && !image.blob.content_type.in?(%('image/jpeg image/png'))
      errors.add(:image, 'はJPEGまたはPNG形式を選択してアップロードしてください')
    end
  end

end

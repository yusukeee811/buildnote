class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum status: { active: 0, withdrawal: 1, force_withdrawal: 2 }

  has_one_attached :image

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

  def get_profile_image(*size)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no-image.png')
      image.attach(io: File.open(file_path), filename: 'no-image.png', content_type: 'image/png')
    end

    if !size.empty?
      image.variant(resize: size)
    else
      image
    end
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

  # 退会時にデータを削除する処理
  def delete_related_data
    self.posts.destroy_all
    self.post_comments.destroy_all
    self.post_likes.destroy_all
    self.relationships.destroy_all
  end


end

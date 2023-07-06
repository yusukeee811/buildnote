class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
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

end

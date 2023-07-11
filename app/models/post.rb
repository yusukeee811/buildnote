class Post < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  has_many :post_likes,     dependent: :destroy
  has_many :post_comments,  dependent: :destroy

  def get_post_image(*size)
    if !size.empty?
      image.variant(resize: size)
    else
      image
    end
  end

  def post_liked_by?(user)
    post_likes.exists?(user_id: user.id)
  end

end

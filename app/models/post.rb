class Post < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  has_many :post_likes,     dependent: :destroy
  has_many :post_comments,  dependent: :destroy

  def get_image(*size)
    if !size.empty?
      image.variant(resize: size)
    else
      image
    end
  end

end

class Post < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  has_many :post_likes,     dependent: :destroy
  has_many :post_comments,  dependent: :destroy

end

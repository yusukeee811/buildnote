class Hashtag < ApplicationRecord
  has_and_belongs_to_many :posts

  validates :hashname, presence: true, length: {maximum:99}
end

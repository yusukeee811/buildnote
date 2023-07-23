class Hashtag < ApplicationRecord
  has_many :hashtag_posts, dependent: :destroy
  has_many :posts, through: :hashtag_posts
  scope :with_posts, -> { joins(:posts).distinct }

  validates :hashname, presence: true, length: {maximum:99}

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "hashname", "id", "updated_at"]
  end

end

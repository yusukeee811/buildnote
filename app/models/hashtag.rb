class Hashtag < ApplicationRecord
  has_and_belongs_to_many :posts

  validates :hashname, presence: true, length: {maximum:99}

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "hashname", "id", "updated_at"]
  end

end

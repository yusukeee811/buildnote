class Training < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "repetition", "set", "start_time", "updated_at", "user_id", "weight"]
  end

end

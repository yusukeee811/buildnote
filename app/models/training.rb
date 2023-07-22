class Training < ApplicationRecord
  belongs_to :user

  validates :name,       presence: true, length: { maximum: 30 }
  validates :set,        presence: true, numericality: { less_than_or_equal_to: 100 }
  validates :weight,     presence: true, numericality: { less_than_or_equal_to: 1000 }
  validates :repetition, presence: true, numericality: { less_than_or_equal_to: 500 }
  
  validates :start_time, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "repetition", "set", "start_time", "updated_at", "user_id", "weight"]
  end

  def volume
    # 重量が自重で0の場合以下で計算
    if weight.zero?
      set * repetition * 1
    else
      set * repetition * weight
    end
  end

end

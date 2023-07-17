class Training < ApplicationRecord
  belongs_to :user

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

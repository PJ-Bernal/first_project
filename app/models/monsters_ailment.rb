class MonstersAilment < ApplicationRecord
  belongs_to :monster
  belongs_to :ailment

  def self.ransackable_attributes(auth_object = nil)
    ["ailment_id", "created_at", "id", "id_value", "monster_id", "updated_at"]
  end
end

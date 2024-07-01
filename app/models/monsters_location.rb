class MonstersLocation < ApplicationRecord
  belongs_to :monster
  belongs_to :location

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "location_id", "monster_id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["location", "monster"]
  end
end

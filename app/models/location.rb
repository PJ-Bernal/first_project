class Location < ApplicationRecord
    has_many :monsters_locations
    has_many :monsters, through: :monsters_locations

    validates :name, presence: true, uniqueness: true
    validates :zoneCount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    def self.ransackable_associations(auth_object = nil)
        ["monsters", "monsters_locations"]
    end

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "updated_at", "zoneCount"]
    end
end

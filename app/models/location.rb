class Location < ApplicationRecord
    has_many :monsters_locations
    has_many :monsters, through: :monsters_locations

    validates :name, presence: true, uniqueness: true
    validates :zoneCount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

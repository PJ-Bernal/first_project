class Monster < ApplicationRecord
    has_many :monsters_locations
    has_many :locations, through: :monsters_locations

    has_many :monsters_ailments
    has_many :ailments, through: :monsters_ailments

    validates :name, presence: true, uniqueness: true
    validates :size, presence: true
    validates :species, presence: true
    validates :description, presence: true, length: { minimum: 10 }
end

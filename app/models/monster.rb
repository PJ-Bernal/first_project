class Monster < ApplicationRecord
    has_many :monsters_locations, dependent: :destroy
    has_many :locations, through: :monsters_locations

    has_many :monsters_ailments, dependent: :destroy
    has_many :ailments, through: :monsters_ailments

    validates :name, presence: true, uniqueness: true
    validates :size, presence: true
    validates :species, presence: true
    validates :description, presence: true, length: { minimum: 10 }

    has_one_attached :file


    # Active admin code required to make the monsters, locations and ailments tables display adequately
    def self.ransackable_associations(auth_object = nil)
        ["ailments", "locations", "monsters_ailments", "monsters_locations"]
    end

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "id_value", "name", "size", "species", "updated_at"]
    end
end

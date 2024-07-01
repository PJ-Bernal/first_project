class Ailment < ApplicationRecord
    has_many :monsters_ailments
    has_many :monsters, through: :monsters_ailments

    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, length: { minimum: 10 }

    def self.ransackable_associations(auth_object = nil)
        ["monsters", "monsters_ailments"]
    end

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "id_value", "name", "updated_at"]
      end
end

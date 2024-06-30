class Ailment < ApplicationRecord
    has_many :monsters_ailments
    has_many :monsters, through: :monsters_ailments

    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, length: { minimum: 10 }
end

class Groupe < ApplicationRecord
    has_many :entities
    belongs_to :user
end

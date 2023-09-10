class Entity < ApplicationRecord
    has_many :groupes
    belongs_to :user
end

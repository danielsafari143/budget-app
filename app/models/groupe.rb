class Groupe < ApplicationRecord
  has_many :groupe_entities, dependent: :destroy
  has_many :entities, through: :groupe_entities
  belongs_to :user, class_name: 'User'

  validates :name, presence: true
  validates :icon, presence: true
end

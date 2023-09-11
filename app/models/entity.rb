# frozen_string_literal: true

class Entity < ApplicationRecord
  has_many :groupe_entities,  dependent: :destroy
  has_many :groupes, through: :groupe_entities
  belongs_to :user, class_name: 'User'

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end

# frozen_string_literal: true

class GroupeEntity < ApplicationRecord
  belongs_to :entity
  belongs_to :groupe
end

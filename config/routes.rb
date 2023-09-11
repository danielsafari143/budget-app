# frozen_string_literal: true

Rails.application.routes.draw do
  root 'splash#index'

  references :groupe do
    references :entity
  end
end

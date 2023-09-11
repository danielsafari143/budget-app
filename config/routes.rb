# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users , path: '/'
  root 'splash#index'

  resources :groupe do 
    resources :entity
  end
end

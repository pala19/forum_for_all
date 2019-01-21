# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user, only: [:index]
  resources :posts
  resources :comments, only: [:create]
end

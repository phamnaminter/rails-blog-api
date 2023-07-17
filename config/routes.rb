# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
    namespace :v1 do
      resources :articles, only: :index
      resources :admins, only: :index
      resources :app_informations, only: :index
      resources :projects, only: :index
    end
  end
end

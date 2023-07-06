# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :articles, only: :index
      resources :admins, only: :index
    end
  end
end

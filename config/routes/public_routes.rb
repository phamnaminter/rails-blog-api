# frozen_string_literal: true

namespace :api do
  namespace :v1 do
    resources :articles, only: :index
    resources :admins, only: :index
    resources :app_informations, only: :index
    resources :projects, only: :index
    resources :admins, only: :create
  end
end

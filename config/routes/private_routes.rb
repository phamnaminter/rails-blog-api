# frozen_string_literal: true

namespace :api do
  namespace :v1 do
    resources :private_healths, only: :index
  end
end

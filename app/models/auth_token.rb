# frozen_string_literal: true

class AuthToken < ApplicationRecord
  belongs_to :admin
end

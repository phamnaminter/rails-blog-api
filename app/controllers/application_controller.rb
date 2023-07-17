# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ExceptionHandler

  before_action do
    ActiveStorage::Current.host = ENV.fetch("HOST", "localhost:3000")
  end
end

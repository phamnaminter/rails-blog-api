# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ExceptionHandler
  include UnauthorizerHandler

  before_action do
    ActiveStorage::Current.host = ENV.fetch("HOST", "localhost:3000")
  end
end

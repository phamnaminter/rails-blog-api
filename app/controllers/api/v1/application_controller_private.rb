# frozen_string_literal: true

class Api::V1::ApplicationControllerPrivate < Api::V1::ApplicationController
  before_action :authenticate_admin!

  def authenticate_admin!
    return unauthorized! unless current_user
  end

  def current_user
    @current_user ||= Admin.authorize(request.headers["Authorization"])
  end
end

# frozen_string_literal: true

class Api::V1::SessionsController < Api::V1::ApplicationControllerPublic
  def create
    access_token = Admins::SignIn.run!(session_params)

    render json: {access_token: access_token}
  end

  private

  def session_params
    params.require(:admins).permit(:email, :password)
  end
end

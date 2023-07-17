# frozen_string_literal: true

class Api::V1::PrivateHealthsController < Api::V1::ApplicationControllerPrivate
  def index
    render json: {status: :ok}
  end
end

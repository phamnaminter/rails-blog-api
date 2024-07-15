# frozen_string_literal: true

# App Information Controller
class Api::V1::AppInformationsController < Api::V1::ApplicationControllerPublic
  def index
    # Load default app information
    # TEST
    @app_information = AppInformation.first

    render json: @app_information, each_serializer: Api::V1::AppInformationSerializer
  end
end

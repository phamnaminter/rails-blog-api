# frozen_string_literal: true

# Admin Controller
class Api::V1::AdminsController < Api::V1::ApplicationControllerPublic
  def index
    @admins = Admin.all

    render json: @admins, each_serializer: Api::V1::AdminSerializer
  end
end

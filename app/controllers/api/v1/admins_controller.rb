# frozen_string_literal: true

# Admin Controller
class Api::V1::AdminsController < Api::V1::ApplicationControllerPublic
  def index
    @admins = Admin.all

    render json: @admins, each_serializer: Api::V1::AdminSerializer
  end

  def create
    @admin = Admins::SignUp.run(admin_params).to_model

    render json: @admin, serializer: Api::V1::DetailAdminSerializer
  end

  private

  def admin_params
    params.require(:admins).permit([:name, :email, :password])
  end
end

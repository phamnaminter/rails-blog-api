# frozen_string_literal: true

# Article Controller
class Api::V1::CoreCustomerSystemsController < Api::V1::ApplicationControllerPublic
  def create
    created_params = params.require(:core_customer_systems).permit(:base64)

    created = CoreCustomerSystem.create! created_params

    render json: {id: created.id}
  end
end

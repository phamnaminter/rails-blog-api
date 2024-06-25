# frozen_string_literal: true

# Article Controller
class Api::V1::CmsController < Api::V1::ApplicationControllerPublic
  def update
    updated_params = params.require(:cms).permit(:key, :core_id)

    cm = Cm.all.select {|local| local.image.blob.key == updated_params[:key]}.first

    cm.update! core_id: updated_params[:core_id]

    render json: cm
  end
end

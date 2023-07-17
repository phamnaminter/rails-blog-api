# frozen_string_literal: true

# Project Controller
class Api::V1::ProjectsController < Api::V1::ApplicationControllerPublic
  def index
    @projects = Project.all

    render json: @projects, each_serializer: Api::V1::ProjectSerializer
  end
end

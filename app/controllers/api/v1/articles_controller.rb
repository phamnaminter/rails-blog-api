# frozen_string_literal: true

# Article Controller
class Api::V1::ArticlesController < Api::V1::ApplicationControllerPublic
  def index
    @articles = Article.all

    render json: @articles, each_serializer: Api::V1::ArticleSerializer
  end
end

# frozen_string_literal: true

# Article Controller
class Api::V1::ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render json: @articles, each_serializer: Api::V1::ArticleSerializer
  end
end

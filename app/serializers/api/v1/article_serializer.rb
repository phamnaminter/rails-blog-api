# frozen_string_literal: true

class Api::V1::ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
end

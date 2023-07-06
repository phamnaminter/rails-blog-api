# frozen_string_literal: true

class Api::V1::AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :likes_count, :rating

  def name
    [object.name, object.avatar]
  end
end

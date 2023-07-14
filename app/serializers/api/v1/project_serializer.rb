# frozen_string_literal: true

class Api::V1::ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :image

  def image
    object.image.url if object.image.attached?
  end
end

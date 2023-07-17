# frozen_string_literal: true

class Api::V1::DetailAdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
end

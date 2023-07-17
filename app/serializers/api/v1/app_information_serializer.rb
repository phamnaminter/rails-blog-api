# frozen_string_literal: true

class Api::V1::AppInformationSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :position, :years_of_experience, :earning, :number_of_projects, :general_information, :education, :languages, :organization, :department, :birthday
end

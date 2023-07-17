# frozen_string_literal: true

class Admins::SignIn < ApplicationInteraction
  string :email
  string :password

  validate :validate_email
  validate :validate_password

  def to_model
    {access_token: @access_token}
  end

  def execute
    @access_token = @admin.generate_token
  end

  private

  def validate_email
    @admin = Admin.find_by email: email
    return if @admin

    errors.add(:email, :not_found)
    throw(:abort)
  end

  def validate_password
    return if @admin.valid_password? password

    errors.add(:password, :invalid)
    throw(:abort)
  end
end

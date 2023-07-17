# frozen_string_literal: true

class Admins::SignUp < ApplicationInteraction
  string :name
  string :email
  string :password

  def to_model
    @admin.reload
  end

  def execute
    @admin = Admin.create!(
      name: name,
      email: email,
      password: password
    )
  end
end

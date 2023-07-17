# frozen_string_literal: true

module UnauthorizerHandler
  extend ActiveSupport::Concern

  included do
    def unauthorized!
      render json: {error: "You need sign in or sign up before continuing"}, status: 401
    end
  end
end

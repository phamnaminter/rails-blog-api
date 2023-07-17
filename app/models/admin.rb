# frozen_string_literal: true

class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :validatable

  has_one :auth_token

  TOKEN_LENGTH = 256
  EXPIRED_TIME = 1.day.from_now

  def self.authorize token
    AuthToken.find_by(token: token, expired_at: Time.zone.now..)&.admin
  end

  # rubocop:disable Style/MultilineBlockChain
  def generate_token
    auth_token&.destroy!

    loop do
      new_token = SecureRandom.hex(TOKEN_LENGTH)
      break new_token unless AuthToken.exists?(token: new_token)
    end.tap {|token| create_auth_token!(token: token, expired_at: EXPIRED_TIME)}
  end
  # rubocop:enable Style/MultilineBlockChain
end

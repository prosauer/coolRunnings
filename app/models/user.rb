class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :runners
  has_many :donators
  has_one_attached :profile_picture

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  def runner_for?(event)
    runners.where(event_organisation: event.event_organisations).first
  end
end

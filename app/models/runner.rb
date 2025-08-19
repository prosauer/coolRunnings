class Runner < ApplicationRecord
  belongs_to :user
  belongs_to :event_organisation
  has_many :donators
  has_one :event, through: :event_organisation
  has_one :organisation, through: :event_organisation
end

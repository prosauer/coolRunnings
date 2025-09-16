class EventOrganisation < ApplicationRecord
  belongs_to :event
  belongs_to :organisation
  delegate :name, to: :organisation
  has_many :runners, dependent: :restrict_with_error
end

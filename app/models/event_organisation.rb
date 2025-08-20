class EventOrganisation < ApplicationRecord
  belongs_to :event
  belongs_to :organisation
  delegate :name, to: :organisation
end

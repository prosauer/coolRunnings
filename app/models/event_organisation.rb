class EventOrganisation < ApplicationRecord
  belongs_to :event
  belongs_to :organisation
end

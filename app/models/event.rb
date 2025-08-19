class Event < ApplicationRecord
  has_many :runners, through: :event_organisations
end

class Event < ApplicationRecord
  has_many :runners, through: :event_organisations
  has_rich_text :description
  has_many :event_organisations
end

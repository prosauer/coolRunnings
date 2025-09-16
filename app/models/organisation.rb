class Organisation < ApplicationRecord
  has_many :event_organisations
  has_many :runners, through: :event_organisations
  has_one_attached :image
end

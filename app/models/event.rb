class Event < ApplicationRecord
  has_many :event_organisations
  has_many :runners, -> {readonly}, through: :event_organisations
  has_rich_text :description
  has_many :organisations, -> {readonly}, through: :event_organisations, dependent: :destroy
  validate :check_no_runners

  def check_no_runners
    if runners.any?
      puts("lol")
      errors.add(:base, "🚨 There are runners signed up for the event you try to update. 🚨")
    end
  end

end

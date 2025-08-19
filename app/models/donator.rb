class Donator < ApplicationRecord
  belongs_to :runner
  belongs_to :user
end

class DailyWorkout < ApplicationRecord
  has_many :lifts
  validates :focus, presence: true
  accepts_nested_attributes_for :lifts
end

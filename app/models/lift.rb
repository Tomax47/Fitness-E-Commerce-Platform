class Lift < ApplicationRecord
  belongs_to :daily_workout
  validates_presence_of %i[name sets reps]
end

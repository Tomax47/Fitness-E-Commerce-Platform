require "test_helper"

class DailyWorkoutTest < ActiveSupport::TestCase

  def setup
    @daily_workout = DailyWorkout.new(focus: 'Rugby Fitness')
  end

  test 'Should be valid' do
    assert @daily_workout.valid?
  end

  test 'Daily workout should have focus' do
    @daily_workout.focus = ' '
    assert_not @daily_workout.valid?
  end
end

require "test_helper"

class LiftTest < ActiveSupport::TestCase

  setup do
    @daily_workout = daily_workouts(:one)
    @lift = Lift.new(name: 'DeadLifts', sets: 5, reps: 3, daily_workout_id: @daily_workout.id)
  end

  test 'Should be valid' do
    assert @lift.valid?
  end

  # test 'Name should be present' do
  #   @lift.name = nil
  #   assert_not @lift.valid?
  # end
  #
  # test 'Sets should be present' do
  #   @lift.sets = nil
  #   assert_not @lift.valid?
  # end
  #
  # test 'Reps should be present' do
  #   @lift.reps = nil
  #   assert_not @lift.valid?
  # end

  lift_attributes = %i[name sets reps daily_workout_id]

  lift_attributes.each do |attribute|
    test "#{attribute} is present" do
      eval("@lift.#{attribute} = nil")
      assert_not @lift.valid?
    end
  end
end

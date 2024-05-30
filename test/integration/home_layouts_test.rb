require "test_helper"

class HomeLayoutsTest < ActionDispatch::IntegrationTest

  def setup
    @daily_workout = DailyWorkout.last
  end

  test 'Proper navbar links' do
    get root_path
    assert_select 'a[href=?]', root_path
    assert_select 'nav' do
      assert_select 'a[href=?]', '#', 4
    end
  end

  test 'Daily workout renders on Home' do
    get root_path
    assert_select '#daily-workout-container'
    assert_select 'p', @daily_workout.focus
  end
end

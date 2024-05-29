require "test_helper"

class DailyWorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get daily_workouts_new_url
    assert_response :success
  end

  test "should get create" do
    get daily_workouts_create_url
    assert_response :success
  end
end

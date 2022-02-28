require "test_helper"

class HabitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habit = habits(:one)
  end

  test "should get index" do
    get habits_url
    assert_response :success
  end

  test "should get new" do
    get new_habit_url
    assert_response :success
  end

  test "should create habit" do
    assert_difference('Habit.count') do
      post habits_url, params: { habit: { description: @habit.description } }
    end

    assert_redirected_to habit_url(Habit.last)
  end

  test "should show habit" do
    get habit_url(@habit)
    assert_response :success
  end

  test "should get edit" do
    get edit_habit_url(@habit)
    assert_response :success
  end

  test "should update habit" do
    patch habit_url(@habit), params: { habit: { description: @habit.description } }
    assert_redirected_to habit_url(@habit)
  end

  test "should destroy habit" do
    assert_difference('Habit.count', -1) do
      delete habit_url(@habit)
    end

    assert_redirected_to habits_url
  end
end

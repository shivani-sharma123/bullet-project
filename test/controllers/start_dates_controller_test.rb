require "test_helper"

class StartDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_date = start_dates(:one)
  end

  test "should get index" do
    get start_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_start_date_url
    assert_response :success
  end

  test "should create start_date" do
    assert_difference("StartDate.count") do
      post start_dates_url, params: { start_date: {  } }
    end

    assert_redirected_to start_date_url(StartDate.last)
  end

  test "should show start_date" do
    get start_date_url(@start_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_date_url(@start_date)
    assert_response :success
  end

  test "should update start_date" do
    patch start_date_url(@start_date), params: { start_date: {  } }
    assert_redirected_to start_date_url(@start_date)
  end

  test "should destroy start_date" do
    assert_difference("StartDate.count", -1) do
      delete start_date_url(@start_date)
    end

    assert_redirected_to start_dates_url
  end
end

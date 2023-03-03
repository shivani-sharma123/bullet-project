require "application_system_test_case"

class StartDatesTest < ApplicationSystemTestCase
  setup do
    @start_date = start_dates(:one)
  end

  test "visiting the index" do
    visit start_dates_url
    assert_selector "h1", text: "Start dates"
  end

  test "should create start date" do
    visit start_dates_url
    click_on "New start date"

    click_on "Create Start date"

    assert_text "Start date was successfully created"
    click_on "Back"
  end

  test "should update Start date" do
    visit start_date_url(@start_date)
    click_on "Edit this start date", match: :first

    click_on "Update Start date"

    assert_text "Start date was successfully updated"
    click_on "Back"
  end

  test "should destroy Start date" do
    visit start_date_url(@start_date)
    click_on "Destroy this start date", match: :first

    assert_text "Start date was successfully destroyed"
  end
end

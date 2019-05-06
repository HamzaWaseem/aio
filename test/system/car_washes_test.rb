require "application_system_test_case"

class CarWashesTest < ApplicationSystemTestCase
  setup do
    @car_wash = car_washes(:one)
  end

  test "visiting the index" do
    visit car_washes_url
    assert_selector "h1", text: "Car Washes"
  end

  test "creating a Car wash" do
    visit car_washes_url
    click_on "New Car Wash"

    fill_in "Body", with: @car_wash.body
    fill_in "Published at", with: @car_wash.published_at
    fill_in "Rates", with: @car_wash.rates
    fill_in "Title", with: @car_wash.title
    click_on "Create Car wash"

    assert_text "Car wash was successfully created"
    click_on "Back"
  end

  test "updating a Car wash" do
    visit car_washes_url
    click_on "Edit", match: :first

    fill_in "Body", with: @car_wash.body
    fill_in "Published at", with: @car_wash.published_at
    fill_in "Rates", with: @car_wash.rates
    fill_in "Title", with: @car_wash.title
    click_on "Update Car wash"

    assert_text "Car wash was successfully updated"
    click_on "Back"
  end

  test "destroying a Car wash" do
    visit car_washes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car wash was successfully destroyed"
  end
end

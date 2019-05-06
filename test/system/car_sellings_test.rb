require "application_system_test_case"

class CarSellingsTest < ApplicationSystemTestCase
  setup do
    @car_selling = car_sellings(:one)
  end

  test "visiting the index" do
    visit car_sellings_url
    assert_selector "h1", text: "Car Sellings"
  end

  test "creating a Car selling" do
    visit car_sellings_url
    click_on "New Car Selling"

    fill_in "Details", with: @car_selling.details
    fill_in "Published at", with: @car_selling.published_at
    fill_in "Rates", with: @car_selling.rates
    fill_in "Title", with: @car_selling.title
    click_on "Create Car selling"

    assert_text "Car selling was successfully created"
    click_on "Back"
  end

  test "updating a Car selling" do
    visit car_sellings_url
    click_on "Edit", match: :first

    fill_in "Details", with: @car_selling.details
    fill_in "Published at", with: @car_selling.published_at
    fill_in "Rates", with: @car_selling.rates
    fill_in "Title", with: @car_selling.title
    click_on "Update Car selling"

    assert_text "Car selling was successfully updated"
    click_on "Back"
  end

  test "destroying a Car selling" do
    visit car_sellings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car selling was successfully destroyed"
  end
end

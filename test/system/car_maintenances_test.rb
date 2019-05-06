require "application_system_test_case"

class CarMaintenancesTest < ApplicationSystemTestCase
  setup do
    @car_maintenance = car_maintenances(:one)
  end

  test "visiting the index" do
    visit car_maintenances_url
    assert_selector "h1", text: "Car Maintenances"
  end

  test "creating a Car maintenance" do
    visit car_maintenances_url
    click_on "New Car Maintenance"

    fill_in "Body", with: @car_maintenance.body
    fill_in "Published at", with: @car_maintenance.published_at
    fill_in "Rates", with: @car_maintenance.rates
    fill_in "Title", with: @car_maintenance.title
    click_on "Create Car maintenance"

    assert_text "Car maintenance was successfully created"
    click_on "Back"
  end

  test "updating a Car maintenance" do
    visit car_maintenances_url
    click_on "Edit", match: :first

    fill_in "Body", with: @car_maintenance.body
    fill_in "Published at", with: @car_maintenance.published_at
    fill_in "Rates", with: @car_maintenance.rates
    fill_in "Title", with: @car_maintenance.title
    click_on "Update Car maintenance"

    assert_text "Car maintenance was successfully updated"
    click_on "Back"
  end

  test "destroying a Car maintenance" do
    visit car_maintenances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car maintenance was successfully destroyed"
  end
end

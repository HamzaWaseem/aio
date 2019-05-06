require "application_system_test_case"

class CarModificationsTest < ApplicationSystemTestCase
  setup do
    @car_modification = car_modifications(:one)
  end

  test "visiting the index" do
    visit car_modifications_url
    assert_selector "h1", text: "Car Modifications"
  end

  test "creating a Car modification" do
    visit car_modifications_url
    click_on "New Car Modification"

    fill_in "Body", with: @car_modification.body
    fill_in "Published at", with: @car_modification.published_at
    fill_in "Rates", with: @car_modification.rates
    fill_in "Title", with: @car_modification.title
    click_on "Create Car modification"

    assert_text "Car modification was successfully created"
    click_on "Back"
  end

  test "updating a Car modification" do
    visit car_modifications_url
    click_on "Edit", match: :first

    fill_in "Body", with: @car_modification.body
    fill_in "Published at", with: @car_modification.published_at
    fill_in "Rates", with: @car_modification.rates
    fill_in "Title", with: @car_modification.title
    click_on "Update Car modification"

    assert_text "Car modification was successfully updated"
    click_on "Back"
  end

  test "destroying a Car modification" do
    visit car_modifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car modification was successfully destroyed"
  end
end

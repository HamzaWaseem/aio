require 'test_helper'

class CarModificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_modification = car_modifications(:one)
  end

  test "should get index" do
    get car_modifications_url
    assert_response :success
  end

  test "should get new" do
    get new_car_modification_url
    assert_response :success
  end

  test "should create car_modification" do
    assert_difference('CarModification.count') do
      post car_modifications_url, params: { car_modification: { body: @car_modification.body, published_at: @car_modification.published_at, rates: @car_modification.rates, title: @car_modification.title } }
    end

    assert_redirected_to car_modification_url(CarModification.last)
  end

  test "should show car_modification" do
    get car_modification_url(@car_modification)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_modification_url(@car_modification)
    assert_response :success
  end

  test "should update car_modification" do
    patch car_modification_url(@car_modification), params: { car_modification: { body: @car_modification.body, published_at: @car_modification.published_at, rates: @car_modification.rates, title: @car_modification.title } }
    assert_redirected_to car_modification_url(@car_modification)
  end

  test "should destroy car_modification" do
    assert_difference('CarModification.count', -1) do
      delete car_modification_url(@car_modification)
    end

    assert_redirected_to car_modifications_url
  end
end

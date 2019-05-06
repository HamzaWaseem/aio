require 'test_helper'

class CarWashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_wash = car_washes(:one)
  end

  test "should get index" do
    get car_washes_url
    assert_response :success
  end

  test "should get new" do
    get new_car_wash_url
    assert_response :success
  end

  test "should create car_wash" do
    assert_difference('CarWash.count') do
      post car_washes_url, params: { car_wash: { body: @car_wash.body, published_at: @car_wash.published_at, rates: @car_wash.rates, title: @car_wash.title } }
    end

    assert_redirected_to car_wash_url(CarWash.last)
  end

  test "should show car_wash" do
    get car_wash_url(@car_wash)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_wash_url(@car_wash)
    assert_response :success
  end

  test "should update car_wash" do
    patch car_wash_url(@car_wash), params: { car_wash: { body: @car_wash.body, published_at: @car_wash.published_at, rates: @car_wash.rates, title: @car_wash.title } }
    assert_redirected_to car_wash_url(@car_wash)
  end

  test "should destroy car_wash" do
    assert_difference('CarWash.count', -1) do
      delete car_wash_url(@car_wash)
    end

    assert_redirected_to car_washes_url
  end
end

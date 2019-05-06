require 'test_helper'

class CarSellingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_selling = car_sellings(:one)
  end

  test "should get index" do
    get car_sellings_url
    assert_response :success
  end

  test "should get new" do
    get new_car_selling_url
    assert_response :success
  end

  test "should create car_selling" do
    assert_difference('CarSelling.count') do
      post car_sellings_url, params: { car_selling: { details: @car_selling.details, published_at: @car_selling.published_at, rates: @car_selling.rates, title: @car_selling.title } }
    end

    assert_redirected_to car_selling_url(CarSelling.last)
  end

  test "should show car_selling" do
    get car_selling_url(@car_selling)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_selling_url(@car_selling)
    assert_response :success
  end

  test "should update car_selling" do
    patch car_selling_url(@car_selling), params: { car_selling: { details: @car_selling.details, published_at: @car_selling.published_at, rates: @car_selling.rates, title: @car_selling.title } }
    assert_redirected_to car_selling_url(@car_selling)
  end

  test "should destroy car_selling" do
    assert_difference('CarSelling.count', -1) do
      delete car_selling_url(@car_selling)
    end

    assert_redirected_to car_sellings_url
  end
end

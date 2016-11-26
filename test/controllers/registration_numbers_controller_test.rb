require 'test_helper'

class RegistrationNumbersControllerTest < ActionController::TestCase
  setup do
    @registration_number = registration_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration_number" do
    assert_difference('RegistrationNumber.count') do
      post :create, registration_number: { district_id: @registration_number.district_id, name: @registration_number.name }
    end

    assert_redirected_to registration_number_path(assigns(:registration_number))
  end

  test "should show registration_number" do
    get :show, id: @registration_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration_number
    assert_response :success
  end

  test "should update registration_number" do
    patch :update, id: @registration_number, registration_number: { district_id: @registration_number.district_id, name: @registration_number.name }
    assert_redirected_to registration_number_path(assigns(:registration_number))
  end

  test "should destroy registration_number" do
    assert_difference('RegistrationNumber.count', -1) do
      delete :destroy, id: @registration_number
    end

    assert_redirected_to registration_numbers_path
  end
end

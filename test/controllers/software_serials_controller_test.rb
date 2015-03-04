require 'test_helper'

class SoftwareSerialsControllerTest < ActionController::TestCase
  setup do
    @software_serial = software_serials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:software_serials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create software_serial" do
    assert_difference('SoftwareSerial.count') do
      post :create, software_serial: {  }
    end

    assert_redirected_to software_serial_path(assigns(:software_serial))
  end

  test "should show software_serial" do
    get :show, id: @software_serial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @software_serial
    assert_response :success
  end

  test "should update software_serial" do
    patch :update, id: @software_serial, software_serial: {  }
    assert_redirected_to software_serial_path(assigns(:software_serial))
  end

  test "should destroy software_serial" do
    assert_difference('SoftwareSerial.count', -1) do
      delete :destroy, id: @software_serial
    end

    assert_redirected_to software_serials_path
  end
end

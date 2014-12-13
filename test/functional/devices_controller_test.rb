require 'test_helper'

class DevicesControllerTest < ActionController::TestCase
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device" do
    assert_difference('Device.count') do
      post :create, device: { brand: @device.brand, code: @device.code, date_assign: @device.date_assign, department: @device.department, model: @device.model, name: @device.name, number: @device.number, purchase_date: @device.purchase_date, responsible: @device.responsible, serial_number: @device.serial_number, status: @device.status }
    end

    assert_redirected_to device_path(assigns(:device))
  end

  test "should show device" do
    get :show, id: @device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device
    assert_response :success
  end

  test "should update device" do
    put :update, id: @device, device: { brand: @device.brand, code: @device.code, date_assign: @device.date_assign, department: @device.department, model: @device.model, name: @device.name, number: @device.number, purchase_date: @device.purchase_date, responsible: @device.responsible, serial_number: @device.serial_number, status: @device.status }
    assert_redirected_to device_path(assigns(:device))
  end

  test "should destroy device" do
    assert_difference('Device.count', -1) do
      delete :destroy, id: @device
    end

    assert_redirected_to devices_path
  end
end

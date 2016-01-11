require 'test_helper'

class ListrfcsControllerTest < ActionController::TestCase
  setup do
    @listrfc = listrfcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listrfcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listrfc" do
    assert_difference('Listrfc.count') do
      post :create, listrfc: { address: @listrfc.address, cp: @listrfc.cp, email: @listrfc.email, name: @listrfc.name, phone: @listrfc.phone, rfc: @listrfc.rfc, uuid_phone: @listrfc.uuid_phone }
    end

    assert_redirected_to listrfc_path(assigns(:listrfc))
  end

  test "should show listrfc" do
    get :show, id: @listrfc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listrfc
    assert_response :success
  end

  test "should update listrfc" do
    patch :update, id: @listrfc, listrfc: { address: @listrfc.address, cp: @listrfc.cp, email: @listrfc.email, name: @listrfc.name, phone: @listrfc.phone, rfc: @listrfc.rfc, uuid_phone: @listrfc.uuid_phone }
    assert_redirected_to listrfc_path(assigns(:listrfc))
  end

  test "should destroy listrfc" do
    assert_difference('Listrfc.count', -1) do
      delete :destroy, id: @listrfc
    end

    assert_redirected_to listrfcs_path
  end
end

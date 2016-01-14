require 'test_helper'

class MyrfcsControllerTest < ActionController::TestCase
  setup do
    @myrfc = myrfcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myrfcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myrfc" do
    assert_difference('Myrfc.count') do
      post :create, myrfc: { address: @myrfc.address, comercio_id: @myrfc.comercio_id, cp: @myrfc.cp, email: @myrfc.email, name: @myrfc.name, phone: @myrfc.phone, referencia: @myrfc.referencia, rfc: @myrfc.rfc }
    end

    assert_redirected_to myrfc_path(assigns(:myrfc))
  end

  test "should show myrfc" do
    get :show, id: @myrfc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myrfc
    assert_response :success
  end

  test "should update myrfc" do
    patch :update, id: @myrfc, myrfc: { address: @myrfc.address, comercio_id: @myrfc.comercio_id, cp: @myrfc.cp, email: @myrfc.email, name: @myrfc.name, phone: @myrfc.phone, referencia: @myrfc.referencia, rfc: @myrfc.rfc }
    assert_redirected_to myrfc_path(assigns(:myrfc))
  end

  test "should destroy myrfc" do
    assert_difference('Myrfc.count', -1) do
      delete :destroy, id: @myrfc
    end

    assert_redirected_to myrfcs_path
  end
end

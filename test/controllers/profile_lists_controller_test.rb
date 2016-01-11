require 'test_helper'

class ProfileListsControllerTest < ActionController::TestCase
  setup do
    @profile_list = profile_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_list" do
    assert_difference('ProfileList.count') do
      post :create, profile_list: { address: @profile_list.address, birthday: @profile_list.birthday, city: @profile_list.city, country: @profile_list.country, cp: @profile_list.cp, email: @profile_list.email, full_name: @profile_list.full_name, phone: @profile_list.phone, state: @profile_list.state }
    end

    assert_redirected_to profile_list_path(assigns(:profile_list))
  end

  test "should show profile_list" do
    get :show, id: @profile_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_list
    assert_response :success
  end

  test "should update profile_list" do
    patch :update, id: @profile_list, profile_list: { address: @profile_list.address, birthday: @profile_list.birthday, city: @profile_list.city, country: @profile_list.country, cp: @profile_list.cp, email: @profile_list.email, full_name: @profile_list.full_name, phone: @profile_list.phone, state: @profile_list.state }
    assert_redirected_to profile_list_path(assigns(:profile_list))
  end

  test "should destroy profile_list" do
    assert_difference('ProfileList.count', -1) do
      delete :destroy, id: @profile_list
    end

    assert_redirected_to profile_lists_path
  end
end

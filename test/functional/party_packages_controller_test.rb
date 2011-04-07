require 'test_helper'

class PartyPackagesControllerTest < ActionController::TestCase
  setup do
    @party_package = party_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:party_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create party_package" do
    assert_difference('PartyPackage.count') do
      post :create, :party_package => @party_package.attributes
    end

    assert_redirected_to party_package_path(assigns(:party_package))
  end

  test "should show party_package" do
    get :show, :id => @party_package.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @party_package.to_param
    assert_response :success
  end

  test "should update party_package" do
    put :update, :id => @party_package.to_param, :party_package => @party_package.attributes
    assert_redirected_to party_package_path(assigns(:party_package))
  end

  test "should destroy party_package" do
    assert_difference('PartyPackage.count', -1) do
      delete :destroy, :id => @party_package.to_param
    end

    assert_redirected_to party_packages_path
  end
end

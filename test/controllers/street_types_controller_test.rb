require 'test_helper'

class StreetTypesControllerTest < ActionController::TestCase
  setup do
    @street_type = street_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:street_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create street_type" do
    assert_difference('StreetType.count') do
      post :create, street_type: { code: @street_type.code, description: @street_type.description, observation: @street_type.observation }
    end

    assert_redirected_to street_type_path(assigns(:street_type))
  end

  test "should show street_type" do
    get :show, id: @street_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @street_type
    assert_response :success
  end

  test "should update street_type" do
    patch :update, id: @street_type, street_type: { code: @street_type.code, description: @street_type.description, observation: @street_type.observation }
    assert_redirected_to street_type_path(assigns(:street_type))
  end

  test "should destroy street_type" do
    assert_difference('StreetType.count', -1) do
      delete :destroy, id: @street_type
    end

    assert_redirected_to street_types_path
  end
end

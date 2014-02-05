require 'test_helper'

class IvaConditionsControllerTest < ActionController::TestCase
  setup do
    @iva_condition = iva_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iva_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iva_condition" do
    assert_difference('IvaCondition.count') do
      post :create, iva_condition: { code: @iva_condition.code, description: @iva_condition.description, observation: @iva_condition.observation }
    end

    assert_redirected_to iva_condition_path(assigns(:iva_condition))
  end

  test "should show iva_condition" do
    get :show, id: @iva_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iva_condition
    assert_response :success
  end

  test "should update iva_condition" do
    patch :update, id: @iva_condition, iva_condition: { code: @iva_condition.code, description: @iva_condition.description, observation: @iva_condition.observation }
    assert_redirected_to iva_condition_path(assigns(:iva_condition))
  end

  test "should destroy iva_condition" do
    assert_difference('IvaCondition.count', -1) do
      delete :destroy, id: @iva_condition
    end

    assert_redirected_to iva_conditions_path
  end
end

require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { birthday: @customer.birthday, customer_billing_id: @customer.customer_billing_id, document: @customer.document, document_type: @customer.document_type, first_name: @customer.first_name, iva_condition_id: @customer.iva_condition_id, last_name: @customer.last_name, notes: @customer.notes, postal_code: @customer.postal_code }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { birthday: @customer.birthday, customer_billing_id: @customer.customer_billing_id, document: @customer.document, document_type: @customer.document_type, first_name: @customer.first_name, iva_condition_id: @customer.iva_condition_id, last_name: @customer.last_name, notes: @customer.notes, postal_code: @customer.postal_code }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end

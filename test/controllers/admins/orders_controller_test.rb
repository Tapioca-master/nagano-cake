require 'test_helper'

class Admins::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_orders_index_url
    assert_response :success
  end

  test "should get today" do
    get admins_orders_today_url
    assert_response :success
  end

  test "should get update" do
    get admins_orders_update_url
    assert_response :success
  end

end

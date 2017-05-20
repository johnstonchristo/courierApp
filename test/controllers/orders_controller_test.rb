require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { courier_id: @order.courier_id, item_depth: @order.item_depth, item_description: @order.item_description, item_height: @order.item_height, item_weight: @order.item_weight, receiver_id: @order.receiver_id, sender_id: @order.sender_id, state: @order.state } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { courier_id: @order.courier_id, item_depth: @order.item_depth, item_description: @order.item_description, item_height: @order.item_height, item_weight: @order.item_weight, receiver_id: @order.receiver_id, sender_id: @order.sender_id, state: @order.state } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end

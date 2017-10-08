require 'test_helper'

class ProductquotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productquote = productquotes(:one)
  end

  test "should get index" do
    get productquotes_url
    assert_response :success
  end

  test "should get new" do
    get new_productquote_url
    assert_response :success
  end

  test "should create productquote" do
    assert_difference('Productquote.count') do
      post productquotes_url, params: { productquote: { param1: @productquote.param1, param2: @productquote.param2, param3: @productquote.param3, param4: @productquote.param4, product_id: @productquote.product_id, quantity: @productquote.quantity, quote_id: @productquote.quote_id } }
    end

    assert_redirected_to productquote_url(Productquote.last)
  end

  test "should show productquote" do
    get productquote_url(@productquote)
    assert_response :success
  end

  test "should get edit" do
    get edit_productquote_url(@productquote)
    assert_response :success
  end

  test "should update productquote" do
    patch productquote_url(@productquote), params: { productquote: { param1: @productquote.param1, param2: @productquote.param2, param3: @productquote.param3, param4: @productquote.param4, product_id: @productquote.product_id, quantity: @productquote.quantity, quote_id: @productquote.quote_id } }
    assert_redirected_to productquote_url(@productquote)
  end

  test "should destroy productquote" do
    assert_difference('Productquote.count', -1) do
      delete productquote_url(@productquote)
    end

    assert_redirected_to productquotes_url
  end
end

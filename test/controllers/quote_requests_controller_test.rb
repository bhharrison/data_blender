require 'test_helper'

class QuoteRequestsControllerTest < ActionController::TestCase
  setup do
    @quote_request = quote_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quote_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote_request" do
    assert_difference('QuoteRequest.count') do
      post :create, quote_request: { callback: @quote_request.callback, cost: @quote_request.cost, description: @quote_request.description, hours: @quote_request.hours, nte: @quote_request.nte, user_id: @quote_request.user_id, website: @quote_request.website }
    end

    assert_redirected_to quote_request_path(assigns(:quote_request))
  end

  test "should show quote_request" do
    get :show, id: @quote_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote_request
    assert_response :success
  end

  test "should update quote_request" do
    patch :update, id: @quote_request, quote_request: { callback: @quote_request.callback, cost: @quote_request.cost, description: @quote_request.description, hours: @quote_request.hours, nte: @quote_request.nte, user_id: @quote_request.user_id, website: @quote_request.website }
    assert_redirected_to quote_request_path(assigns(:quote_request))
  end

  test "should destroy quote_request" do
    assert_difference('QuoteRequest.count', -1) do
      delete :destroy, id: @quote_request
    end

    assert_redirected_to quote_requests_path
  end
end

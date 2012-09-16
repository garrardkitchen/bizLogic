require 'test_helper'

class LogicsControllerTest < ActionController::TestCase
  setup do
    @logic = logics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logic" do
    assert_difference('Logic.count') do
      post :create, logic: { code: @logic.code, description: @logic.description, logic_order: @logic.logic_order, user_id: @logic.user_id }
    end

    assert_redirected_to logic_path(assigns(:logic))
  end

  test "should show logic" do
    get :show, id: @logic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logic
    assert_response :success
  end

  test "should update logic" do
    put :update, id: @logic, logic: { code: @logic.code, description: @logic.description, logic_order: @logic.logic_order, user_id: @logic.user_id }
    assert_redirected_to logic_path(assigns(:logic))
  end

  test "should destroy logic" do
    assert_difference('Logic.count', -1) do
      delete :destroy, id: @logic
    end

    assert_redirected_to logics_path
  end
end

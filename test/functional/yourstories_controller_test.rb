require 'test_helper'

class YourstoriesControllerTest < ActionController::TestCase
  setup do
    @yourstory = yourstories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yourstories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yourstory" do
    assert_difference('Yourstory.count') do
      post :create, yourstory: { description: @yourstory.description, name: @yourstory.name, remote_image_url: @yourstory.remote_image_url, user_id: @yourstory.user_id }
    end

    assert_redirected_to yourstory_path(assigns(:yourstory))
  end

  test "should show yourstory" do
    get :show, id: @yourstory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yourstory
    assert_response :success
  end

  test "should update yourstory" do
    put :update, id: @yourstory, yourstory: { description: @yourstory.description, name: @yourstory.name, remote_image_url: @yourstory.remote_image_url, user_id: @yourstory.user_id }
    assert_redirected_to yourstory_path(assigns(:yourstory))
  end

  test "should destroy yourstory" do
    assert_difference('Yourstory.count', -1) do
      delete :destroy, id: @yourstory
    end

    assert_redirected_to yourstories_path
  end
end

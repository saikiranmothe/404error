require 'test_helper'

class VillagesControllerTest < ActionController::TestCase
  setup do
    @village = villages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:villages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create village" do
    assert_difference('Village.count') do
      post :create, village: { address: @village.address, description: @village.description, facebook_page: @village.facebook_page, latitude: @village.latitude, longitude: @village.longitude, name: @village.name, remote_banner1_url: @village.remote_banner1_url, remote_banner2_url: @village.remote_banner2_url, remote_banner3_url: @village.remote_banner3_url, remote_banner_url: @village.remote_banner_url, remote_image_url: @village.remote_image_url, website: @village.website, wiki_link: @village.wiki_link }
    end

    assert_redirected_to village_path(assigns(:village))
  end

  test "should show village" do
    get :show, id: @village
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @village
    assert_response :success
  end

  test "should update village" do
    put :update, id: @village, village: { address: @village.address, description: @village.description, facebook_page: @village.facebook_page, latitude: @village.latitude, longitude: @village.longitude, name: @village.name, remote_banner1_url: @village.remote_banner1_url, remote_banner2_url: @village.remote_banner2_url, remote_banner3_url: @village.remote_banner3_url, remote_banner_url: @village.remote_banner_url, remote_image_url: @village.remote_image_url, website: @village.website, wiki_link: @village.wiki_link }
    assert_redirected_to village_path(assigns(:village))
  end

  test "should destroy village" do
    assert_difference('Village.count', -1) do
      delete :destroy, id: @village
    end

    assert_redirected_to villages_path
  end
end

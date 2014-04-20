require 'test_helper'

class DistrictsControllerTest < ActionController::TestCase
  setup do
    @district = districts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:districts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create district" do
    assert_difference('District.count') do
      post :create, district: { address: @district.address, description: @district.description, facebook_page: @district.facebook_page, latitude: @district.latitude, longitude: @district.longitude, name: @district.name, remote_banner1_url: @district.remote_banner1_url, remote_banner2_url: @district.remote_banner2_url, remote_banner3_url: @district.remote_banner3_url, remote_banner_url: @district.remote_banner_url, remote_image_url: @district.remote_image_url, website: @district.website, wiki_link: @district.wiki_link }
    end

    assert_redirected_to district_path(assigns(:district))
  end

  test "should show district" do
    get :show, id: @district
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @district
    assert_response :success
  end

  test "should update district" do
    put :update, id: @district, district: { address: @district.address, description: @district.description, facebook_page: @district.facebook_page, latitude: @district.latitude, longitude: @district.longitude, name: @district.name, remote_banner1_url: @district.remote_banner1_url, remote_banner2_url: @district.remote_banner2_url, remote_banner3_url: @district.remote_banner3_url, remote_banner_url: @district.remote_banner_url, remote_image_url: @district.remote_image_url, website: @district.website, wiki_link: @district.wiki_link }
    assert_redirected_to district_path(assigns(:district))
  end

  test "should destroy district" do
    assert_difference('District.count', -1) do
      delete :destroy, id: @district
    end

    assert_redirected_to districts_path
  end
end

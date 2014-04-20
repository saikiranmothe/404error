require 'test_helper'

class MandalsControllerTest < ActionController::TestCase
  setup do
    @mandal = mandals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mandals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mandal" do
    assert_difference('Mandal.count') do
      post :create, mandal: { address: @mandal.address, description: @mandal.description, facebook_page: @mandal.facebook_page, latitude: @mandal.latitude, longitude: @mandal.longitude, name: @mandal.name, remote_banner1_url: @mandal.remote_banner1_url, remote_banner2_url: @mandal.remote_banner2_url, remote_banner3_url: @mandal.remote_banner3_url, remote_banner_url: @mandal.remote_banner_url, remote_image_url: @mandal.remote_image_url, website: @mandal.website, wiki_link: @mandal.wiki_link }
    end

    assert_redirected_to mandal_path(assigns(:mandal))
  end

  test "should show mandal" do
    get :show, id: @mandal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mandal
    assert_response :success
  end

  test "should update mandal" do
    put :update, id: @mandal, mandal: { address: @mandal.address, description: @mandal.description, facebook_page: @mandal.facebook_page, latitude: @mandal.latitude, longitude: @mandal.longitude, name: @mandal.name, remote_banner1_url: @mandal.remote_banner1_url, remote_banner2_url: @mandal.remote_banner2_url, remote_banner3_url: @mandal.remote_banner3_url, remote_banner_url: @mandal.remote_banner_url, remote_image_url: @mandal.remote_image_url, website: @mandal.website, wiki_link: @mandal.wiki_link }
    assert_redirected_to mandal_path(assigns(:mandal))
  end

  test "should destroy mandal" do
    assert_difference('Mandal.count', -1) do
      delete :destroy, id: @mandal
    end

    assert_redirected_to mandals_path
  end
end

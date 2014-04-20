require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { address: @place.address, category: @place.category, closeing_time: @place.closeing_time, description: @place.description, district_id: @place.district_id, established: @place.established, fbpage_link: @place.fbpage_link, latitube: @place.latitube, longitude: @place.longitude, mandal_id: @place.mandal_id, name: @place.name, opening_time: @place.opening_time, rating: @place.rating, remote_banner1_url: @place.remote_banner1_url, remote_banner2_url: @place.remote_banner2_url, remote_banner3_url: @place.remote_banner3_url, remote_banner_url: @place.remote_banner_url, remote_image_url: @place.remote_image_url, user_id: @place.user_id, verify: @place.verify, village_id: @place.village_id, website: @place.website, wiki_link: @place.wiki_link, youtube_link: @place.youtube_link }
    end

    assert_redirected_to place_path(assigns(:place))
  end

  test "should show place" do
    get :show, id: @place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place
    assert_response :success
  end

  test "should update place" do
    put :update, id: @place, place: { address: @place.address, category: @place.category, closeing_time: @place.closeing_time, description: @place.description, district_id: @place.district_id, established: @place.established, fbpage_link: @place.fbpage_link, latitube: @place.latitube, longitude: @place.longitude, mandal_id: @place.mandal_id, name: @place.name, opening_time: @place.opening_time, rating: @place.rating, remote_banner1_url: @place.remote_banner1_url, remote_banner2_url: @place.remote_banner2_url, remote_banner3_url: @place.remote_banner3_url, remote_banner_url: @place.remote_banner_url, remote_image_url: @place.remote_image_url, user_id: @place.user_id, verify: @place.verify, village_id: @place.village_id, website: @place.website, wiki_link: @place.wiki_link, youtube_link: @place.youtube_link }
    assert_redirected_to place_path(assigns(:place))
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end

    assert_redirected_to places_path
  end
end

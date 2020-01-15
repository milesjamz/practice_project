require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should have views" do
    get :index
    assert_response :success
  end
end

require "test_helper"

class WellcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get :index" do
    get wellcome_:index_url
    assert_response :success
  end
end

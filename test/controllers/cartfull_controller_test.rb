require "test_helper"

class CartfullControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cartfull_create_url
    assert_response :success
  end
end

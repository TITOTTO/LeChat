require "test_helper"

class JoinTableArticlesCartsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get join_table_articles_carts_create_url
    assert_response :success
  end

  test "should get uptdate" do
    get join_table_articles_carts_uptdate_url
    assert_response :success
  end

  test "should get destroy" do
    get join_table_articles_carts_destroy_url
    assert_response :success
  end
end

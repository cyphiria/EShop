require "test_helper"

class SearchController < ActionDispatch::IntegrationTest
  test "should find matching user" do
    get pages_home_url
    assert_response :success
  end

  test "should find user different city same hobby" do
    get pages_home_url
    assert_response :success
  end

  test "should not find matching user" do
    get pages_home_url
    assert_response :success
  end

end

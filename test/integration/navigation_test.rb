require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  fixtures :all

  test "should get an error when accessing buyer route" do
    assert_raises ActionController::RoutingError do
      host! "foobar.com"
      get "/buyer"
    end
  end

  test "should get an error when accessing buyer route with www" do
    assert_raises ActionController::RoutingError do
      host! "www.foobar.com"
      get "/buyer"
    end
  end

  test "should allow access to buyer route any subdomain" do
    %w[tenant foobar hi].each do |subdomain|
      host! "#{subdomain}.someurl.com"
      get "/buyer"
      assert_response :success
    end
  end

  test "should allow access to unit route without subdomain" do
    host! "someurl.com"
    get "/units"
    assert_response :success
  end

  test "should deny access to unit route with subdomain" do
    assert_raises ActionController::RoutingError do
      host! "tenant.someurl.com"
      get "/units"
    end
  end

end

require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get toruk" do
    get static_toruk_url
    assert_response :success
  end

end

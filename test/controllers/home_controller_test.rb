require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get iniciar" do
    get home_iniciar_url
    assert_response :success
  end

end

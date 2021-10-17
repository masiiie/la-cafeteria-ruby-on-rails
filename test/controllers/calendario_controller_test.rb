require 'test_helper'

class CalendarioControllerTest < ActionDispatch::IntegrationTest
  test "should get mostrar" do
    get calendario_mostrar_url
    assert_response :success
  end

end

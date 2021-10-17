require 'test_helper'

class MercanciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mercancium = mercancia(:one)
  end

  test "should get index" do
    get mercancia_url
    assert_response :success
  end

  test "should get new" do
    get new_mercancium_url
    assert_response :success
  end

  test "should create mercancium" do
    assert_difference('Mercancium.count') do
      post mercancia_url, params: { mercancium: { jornada_id: @mercancium.jornada_id, product_id: @mercancium.product_id, recibido: @mercancium.recibido } }
    end

    assert_redirected_to mercancium_url(Mercancium.last)
  end

  test "should show mercancium" do
    get mercancium_url(@mercancium)
    assert_response :success
  end

  test "should get edit" do
    get edit_mercancium_url(@mercancium)
    assert_response :success
  end

  test "should update mercancium" do
    patch mercancium_url(@mercancium), params: { mercancium: { jornada_id: @mercancium.jornada_id, product_id: @mercancium.product_id, recibido: @mercancium.recibido } }
    assert_redirected_to mercancium_url(@mercancium)
  end

  test "should destroy mercancium" do
    assert_difference('Mercancium.count', -1) do
      delete mercancium_url(@mercancium)
    end

    assert_redirected_to mercancia_url
  end
end

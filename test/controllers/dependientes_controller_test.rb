require 'test_helper'

class DependientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dependiente = dependientes(:one)
  end

  test "should get index" do
    get dependientes_url
    assert_response :success
  end

  test "should get new" do
    get new_dependiente_url
    assert_response :success
  end

  test "should create dependiente" do
    assert_difference('Dependiente.count') do
      post dependientes_url, params: { dependiente: { direccion: @dependiente.direccion, nombre: @dependiente.nombre, telefono: @dependiente.telefono } }
    end

    assert_redirected_to dependiente_url(Dependiente.last)
  end

  test "should show dependiente" do
    get dependiente_url(@dependiente)
    assert_response :success
  end

  test "should get edit" do
    get edit_dependiente_url(@dependiente)
    assert_response :success
  end

  test "should update dependiente" do
    patch dependiente_url(@dependiente), params: { dependiente: { direccion: @dependiente.direccion, nombre: @dependiente.nombre, telefono: @dependiente.telefono } }
    assert_redirected_to dependiente_url(@dependiente)
  end

  test "should destroy dependiente" do
    assert_difference('Dependiente.count', -1) do
      delete dependiente_url(@dependiente)
    end

    assert_redirected_to dependientes_url
  end
end

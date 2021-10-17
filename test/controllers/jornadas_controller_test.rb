require 'test_helper'

class JornadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jornada = jornadas(:one)
  end

  test "should get index" do
    get jornadas_url
    assert_response :success
  end

  test "should get new" do
    get new_jornada_url
    assert_response :success
  end

  test "should create jornada" do
    assert_difference('Jornada.count') do
      post jornadas_url, params: { jornada: { dependiente_id: @jornada.dependiente_id, fecha: @jornada.fecha, fondo_final: @jornada.fondo_final, fondo_inicial: @jornada.fondo_inicial } }
    end

    assert_redirected_to jornada_url(Jornada.last)
  end

  test "should show jornada" do
    get jornada_url(@jornada)
    assert_response :success
  end

  test "should get edit" do
    get edit_jornada_url(@jornada)
    assert_response :success
  end

  test "should update jornada" do
    patch jornada_url(@jornada), params: { jornada: { dependiente_id: @jornada.dependiente_id, fecha: @jornada.fecha, fondo_final: @jornada.fondo_final, fondo_inicial: @jornada.fondo_inicial } }
    assert_redirected_to jornada_url(@jornada)
  end

  test "should destroy jornada" do
    assert_difference('Jornada.count', -1) do
      delete jornada_url(@jornada)
    end

    assert_redirected_to jornadas_url
  end
end

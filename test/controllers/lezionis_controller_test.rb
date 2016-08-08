require 'test_helper'

class LezionisControllerTest < ActionController::TestCase
  setup do
    @lezioni = lezionis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lezionis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lezioni" do
    assert_difference('Lezioni.count') do
      post :create, lezioni: { city: @lezioni.city, date: @lezioni.date, descrizione: @lezioni.descrizione, equipment: @lezioni.equipment, meeting_point: @lezioni.meeting_point, numero_di_iscritti: @lezioni.numero_di_iscritti, park: @lezioni.park, prezzo: @lezioni.prezzo, time: @lezioni.time, titolo: @lezioni.titolo }
    end

    assert_redirected_to lezioni_path(assigns(:lezioni))
  end

  test "should show lezioni" do
    get :show, id: @lezioni
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lezioni
    assert_response :success
  end

  test "should update lezioni" do
    patch :update, id: @lezioni, lezioni: { city: @lezioni.city, date: @lezioni.date, descrizione: @lezioni.descrizione, equipment: @lezioni.equipment, meeting_point: @lezioni.meeting_point, numero_di_iscritti: @lezioni.numero_di_iscritti, park: @lezioni.park, prezzo: @lezioni.prezzo, time: @lezioni.time, titolo: @lezioni.titolo }
    assert_redirected_to lezioni_path(assigns(:lezioni))
  end

  test "should destroy lezioni" do
    assert_difference('Lezioni.count', -1) do
      delete :destroy, id: @lezioni
    end

    assert_redirected_to lezionis_path
  end
end

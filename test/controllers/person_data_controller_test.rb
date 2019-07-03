require 'test_helper'

class PersonDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_datum = person_data(:one)
  end

  test "should get index" do
    get person_data_url
    assert_response :success
  end

  test "should get new" do
    get new_person_datum_url
    assert_response :success
  end

  test "should create person_datum" do
    assert_difference('PersonDatum.count') do
      post person_data_url, params: { person_datum: { birthdate: @person_datum.birthdate, cpf: @person_datum.cpf, lastname: @person_datum.lastname, name: @person_datum.name, rg: @person_datum.rg, username: @person_datum.username } }
    end

    assert_redirected_to person_datum_url(PersonDatum.last)
  end

  test "should show person_datum" do
    get person_datum_url(@person_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_datum_url(@person_datum)
    assert_response :success
  end

  test "should update person_datum" do
    patch person_datum_url(@person_datum), params: { person_datum: { birthdate: @person_datum.birthdate, cpf: @person_datum.cpf, lastname: @person_datum.lastname, name: @person_datum.name, rg: @person_datum.rg, username: @person_datum.username } }
    assert_redirected_to person_datum_url(@person_datum)
  end

  test "should destroy person_datum" do
    assert_difference('PersonDatum.count', -1) do
      delete person_datum_url(@person_datum)
    end

    assert_redirected_to person_data_url
  end
end

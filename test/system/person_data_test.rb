require "application_system_test_case"

class PersonDataTest < ApplicationSystemTestCase
  setup do
    @person_datum = person_data(:one)
  end

  test "visiting the index" do
    visit person_data_url
    assert_selector "h1", text: "Person Data"
  end

  test "creating a Person datum" do
    visit person_data_url
    click_on "New Person Datum"

    fill_in "Birthdate", with: @person_datum.birthdate
    fill_in "Cpf", with: @person_datum.cpf
    fill_in "Lastname", with: @person_datum.lastname
    fill_in "Name", with: @person_datum.name
    fill_in "Rg", with: @person_datum.rg
    fill_in "Username", with: @person_datum.username
    click_on "Create Person datum"

    assert_text "Person datum was successfully created"
    click_on "Back"
  end

  test "updating a Person datum" do
    visit person_data_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @person_datum.birthdate
    fill_in "Cpf", with: @person_datum.cpf
    fill_in "Lastname", with: @person_datum.lastname
    fill_in "Name", with: @person_datum.name
    fill_in "Rg", with: @person_datum.rg
    fill_in "Username", with: @person_datum.username
    click_on "Update Person datum"

    assert_text "Person datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Person datum" do
    visit person_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person datum was successfully destroyed"
  end
end

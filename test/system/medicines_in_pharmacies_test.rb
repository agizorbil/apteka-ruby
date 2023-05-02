require "application_system_test_case"

class MedicinesInPharmaciesTest < ApplicationSystemTestCase
  setup do
    @medicines_in_pharmacy = medicines_in_pharmacies(:one)
  end

  test "visiting the index" do
    visit medicines_in_pharmacies_url
    assert_selector "h1", text: "Medicines in pharmacies"
  end

  test "should create medicines in pharmacy" do
    visit medicines_in_pharmacies_url
    click_on "New medicines in pharmacy"

    fill_in "Count", with: @medicines_in_pharmacy.count
    fill_in "Medicine", with: @medicines_in_pharmacy.medicine_id
    fill_in "Pharmacy", with: @medicines_in_pharmacy.pharmacy_id
    click_on "Create Medicines in pharmacy"

    assert_text "Medicines in pharmacy was successfully created"
    click_on "Back"
  end

  test "should update Medicines in pharmacy" do
    visit medicines_in_pharmacy_url(@medicines_in_pharmacy)
    click_on "Edit this medicines in pharmacy", match: :first

    fill_in "Count", with: @medicines_in_pharmacy.count
    fill_in "Medicine", with: @medicines_in_pharmacy.medicine_id
    fill_in "Pharmacy", with: @medicines_in_pharmacy.pharmacy_id
    click_on "Update Medicines in pharmacy"

    assert_text "Medicines in pharmacy was successfully updated"
    click_on "Back"
  end

  test "should destroy Medicines in pharmacy" do
    visit medicines_in_pharmacy_url(@medicines_in_pharmacy)
    click_on "Destroy this medicines in pharmacy", match: :first

    assert_text "Medicines in pharmacy was successfully destroyed"
  end
end

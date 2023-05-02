require "application_system_test_case"

class MedicinesTest < ApplicationSystemTestCase
  setup do
    @medicine = medicines(:one)
  end

  test "visiting the index" do
    visit medicines_url
    assert_selector "h1", text: "Medicines"
  end

  test "should create medicine" do
    visit medicines_url
    click_on "New medicine"

<<<<<<< HEAD
    fill_in "Count", with: @medicine.count
=======
>>>>>>> 1e11775 (First Commit)
    fill_in "Description", with: @medicine.description
    fill_in "Name", with: @medicine.name
    fill_in "Price", with: @medicine.price
    click_on "Create Medicine"

    assert_text "Medicine was successfully created"
    click_on "Back"
  end

  test "should update Medicine" do
    visit medicine_url(@medicine)
    click_on "Edit this medicine", match: :first

<<<<<<< HEAD
    fill_in "Count", with: @medicine.count
=======
>>>>>>> 1e11775 (First Commit)
    fill_in "Description", with: @medicine.description
    fill_in "Name", with: @medicine.name
    fill_in "Price", with: @medicine.price
    click_on "Update Medicine"

    assert_text "Medicine was successfully updated"
    click_on "Back"
  end

  test "should destroy Medicine" do
    visit medicine_url(@medicine)
    click_on "Destroy this medicine", match: :first

    assert_text "Medicine was successfully destroyed"
  end
end

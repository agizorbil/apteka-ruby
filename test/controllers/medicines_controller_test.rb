require "test_helper"

class MedicinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicine = medicines(:one)
  end

  test "should get index" do
    get medicines_url
    assert_response :success
  end

  test "should get new" do
    get new_medicine_url
    assert_response :success
  end

  test "should create medicine" do
    assert_difference("Medicine.count") do
<<<<<<< HEAD
      post medicines_url, params: { medicine: { count: @medicine.count, description: @medicine.description, name: @medicine.name, price: @medicine.price } }
=======
      post medicines_url, params: { medicine: { description: @medicine.description, name: @medicine.name, price: @medicine.price } }
>>>>>>> 1e11775 (First Commit)
    end

    assert_redirected_to medicine_url(Medicine.last)
  end

  test "should show medicine" do
    get medicine_url(@medicine)
    assert_response :success
  end

  test "should get edit" do
    get edit_medicine_url(@medicine)
    assert_response :success
  end

  test "should update medicine" do
<<<<<<< HEAD
    patch medicine_url(@medicine), params: { medicine: { count: @medicine.count, description: @medicine.description, name: @medicine.name, price: @medicine.price } }
=======
    patch medicine_url(@medicine), params: { medicine: { description: @medicine.description, name: @medicine.name, price: @medicine.price } }
>>>>>>> 1e11775 (First Commit)
    assert_redirected_to medicine_url(@medicine)
  end

  test "should destroy medicine" do
    assert_difference("Medicine.count", -1) do
      delete medicine_url(@medicine)
    end

    assert_redirected_to medicines_url
  end
end

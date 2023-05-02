require "test_helper"

class MedicinesInPharmaciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicines_in_pharmacy = medicines_in_pharmacies(:one)
  end

  test "should get index" do
    get medicines_in_pharmacies_url
    assert_response :success
  end

  test "should get new" do
    get new_medicines_in_pharmacy_url
    assert_response :success
  end

  test "should create medicines_in_pharmacy" do
    assert_difference("MedicinesInPharmacy.count") do
      post medicines_in_pharmacies_url, params: { medicines_in_pharmacy: { count: @medicines_in_pharmacy.count, medicine_id: @medicines_in_pharmacy.medicine_id, pharmacy_id: @medicines_in_pharmacy.pharmacy_id } }
    end

    assert_redirected_to medicines_in_pharmacy_url(MedicinesInPharmacy.last)
  end

  test "should show medicines_in_pharmacy" do
    get medicines_in_pharmacy_url(@medicines_in_pharmacy)
    assert_response :success
  end

  test "should get edit" do
    get edit_medicines_in_pharmacy_url(@medicines_in_pharmacy)
    assert_response :success
  end

  test "should update medicines_in_pharmacy" do
    patch medicines_in_pharmacy_url(@medicines_in_pharmacy), params: { medicines_in_pharmacy: { count: @medicines_in_pharmacy.count, medicine_id: @medicines_in_pharmacy.medicine_id, pharmacy_id: @medicines_in_pharmacy.pharmacy_id } }
    assert_redirected_to medicines_in_pharmacy_url(@medicines_in_pharmacy)
  end

  test "should destroy medicines_in_pharmacy" do
    assert_difference("MedicinesInPharmacy.count", -1) do
      delete medicines_in_pharmacy_url(@medicines_in_pharmacy)
    end

    assert_redirected_to medicines_in_pharmacies_url
  end
end

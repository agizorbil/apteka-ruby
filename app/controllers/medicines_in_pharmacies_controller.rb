class MedicinesInPharmaciesController < ApplicationController
  before_action :set_medicines_in_pharmacy, only: %i[ show edit update destroy ]

  # GET /medicines_in_pharmacies or /medicines_in_pharmacies.json
  def index
    @medicines_in_pharmacies = MedicinesInPharmacy.all
  end

  # GET /medicines_in_pharmacies/1 or /medicines_in_pharmacies/1.json
  def show
  end

  # GET /medicines_in_pharmacies/new
  def new
    @medicines_in_pharmacy = MedicinesInPharmacy.new
  end

  # GET /medicines_in_pharmacies/1/edit
  def edit
  end

  # POST /medicines_in_pharmacies or /medicines_in_pharmacies.json
  def create
    @medicines_in_pharmacy = MedicinesInPharmacy.new(medicines_in_pharmacy_params)

    respond_to do |format|
      if @medicines_in_pharmacy.save
        format.html { redirect_to medicines_in_pharmacy_url(@medicines_in_pharmacy), notice: "Medicines in pharmacy was successfully created." }
        format.json { render :show, status: :created, location: @medicines_in_pharmacy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medicines_in_pharmacy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicines_in_pharmacies/1 or /medicines_in_pharmacies/1.json
  def update
    respond_to do |format|
      if @medicines_in_pharmacy.update(medicines_in_pharmacy_params)
        format.html { redirect_to medicines_in_pharmacy_url(@medicines_in_pharmacy), notice: "Medicines in pharmacy was successfully updated." }
        format.json { render :show, status: :ok, location: @medicines_in_pharmacy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medicines_in_pharmacy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicines_in_pharmacies/1 or /medicines_in_pharmacies/1.json
  def destroy
    @medicines_in_pharmacy.destroy

    respond_to do |format|
      format.html { redirect_to medicines_in_pharmacies_url, notice: "Medicines in pharmacy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicines_in_pharmacy
      @medicines_in_pharmacy = MedicinesInPharmacy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medicines_in_pharmacy_params
      params.require(:medicines_in_pharmacy).permit(:pharmacy_id, :medicine_id, :count)
    end
end

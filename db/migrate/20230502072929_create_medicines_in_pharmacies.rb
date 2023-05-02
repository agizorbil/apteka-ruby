class CreateMedicinesInPharmacies < ActiveRecord::Migration[7.0]
  def change
    create_table :medicines_in_pharmacies do |t|
      t.references :pharmacy, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end

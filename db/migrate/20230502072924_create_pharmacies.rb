class CreatePharmacies < ActiveRecord::Migration[7.0]
  def change
    create_table :pharmacies do |t|
      t.text :name
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end

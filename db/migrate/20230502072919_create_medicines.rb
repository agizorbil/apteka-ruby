class CreateMedicines < ActiveRecord::Migration[7.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end

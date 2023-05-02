class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :second_name
      t.text :email
      t.integer :phone

      t.timestamps
    end
  end
end

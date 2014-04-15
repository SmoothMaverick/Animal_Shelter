class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :name
      t.integer :quantity
      t.date :expiration_date
      t.string :type
      t.references :care_plans

      t.timestamps
    end
  end
end

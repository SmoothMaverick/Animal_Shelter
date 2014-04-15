class CreateCarePlans < ActiveRecord::Migration
  def change
    create_table :care_plans do |t|
      t.string :name
      t.text :details
      t.references :supplies

      t.timestamps
    end
  end
end

class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.date :arrival_date
      t.references :care_plan
      t.references :shelter
      t.string :size
      t.string :type
      t.integer :status
      t.references :customer

      t.timestamps
    end
  end
end

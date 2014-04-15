class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :role
      t.string :schedule
      t.date :start_date
      t.date :end_date
      t.integer :rank
      t.references :shelter

      t.timestamps
    end
  end
end

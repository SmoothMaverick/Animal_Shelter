class CreateCarePlanSupplies < ActiveRecord::Migration
  def change
    create_table :care_plans_supplies do |t|
      t.references :care_plan
      t.references :supply
    end
  end
end

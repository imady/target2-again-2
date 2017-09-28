class CreateCars < ActiveRecord::Migration
  def up
    create_table :cars do |t|
      t.string "four_wheels_id"
      t.string "Car Name"
      t.boolean "Visibile", :default => false
      t.integer "Position"
      t.integer "Car Model"
      t.string "Car Country"
      t.timestamps null: false
      end
      add_index("cars","four_wheels_id")
  end

  def down
    drop_table :cars
  end
end

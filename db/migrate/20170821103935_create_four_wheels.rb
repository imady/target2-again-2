class CreateFourWheels < ActiveRecord::Migration
  def up
    create_table :four_wheels do |t|
      t.string "vechicals_id"
      t.string "Four Wheels Name"
      t.boolean "Visible", :default => false
      t.integer "Position"
      t.string "permalink"
      t.timestamps null: false
    end
    add_index("four_wheels","vechicals_id")
    add_index("four_wheels", "permalink")
  end

  def down
    drop_table :four_wheels
  end

end

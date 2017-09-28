class CreateVechicals < ActiveRecord::Migration
  def up
    create_table :vechicals do |t|
      t.string "Vechical Name"
      t.boolean "Visible", :default => false
      t.integer "Position"
      t.timestamps null: false
    end
  end

  def down
    drop_table :vechicals
  end
end

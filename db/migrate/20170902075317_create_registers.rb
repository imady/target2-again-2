class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
	t.string "Name"
	t.string "Subject"
	t.string "Quantity"
	t.string "Class"
     t.timestamps null: false
    end
  end
end

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
	t.string "Name"
	t.string "Subject"
	t.string "Quantity"
	t.string "Class"
    t.timestamps null: false
    end
  end
end

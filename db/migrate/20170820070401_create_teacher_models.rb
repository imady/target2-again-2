class CreateTeacherModels < ActiveRecord::Migration
  def up
    create_table :teacher_models do |t|
      t.string "first_name", :limited => 50
      t.string "last_name", :limited => 50
      t.string "password", :limit => 30, :null => false
      t.string "email", :default => ""
    #  t.datetime "created_at"
    #  t.datetime "updated_at"

      t.timestamps null: false
    end
  end

  def down
    drop_table :teacher_models
  end

end

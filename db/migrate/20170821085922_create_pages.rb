class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.string "subject_id"
      t.string "Pages Name"
      t.string "Permalink"
      t.integer "Position"
      t.boolean "Visible", :dafault => false;
      t.timestamps null: false
    end
  add_index("pages", "subject_id")
  add_index("pages", "Permalink")
  end

  def down
    drop_table :pages
  end

end

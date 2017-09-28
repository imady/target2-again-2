class CreateSubjects < ActiveRecord::Migration
  def up
    create_table :subjects do |t|
        t.string "Name"
        t.integer "Position"
        t.boolean "Visible", :dafault => false;
        t.timestamps null: false
    end
  end

    def down
      drop_table :subjects
    end
end

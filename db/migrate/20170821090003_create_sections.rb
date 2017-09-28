class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.string "page_id"
      t.string "Section Name"
      t.integer "Position"
      t.boolean "Visible", :dafault => false;
      t.string "Content Type"
      t.text "Content"
      t.timestamps null: false
      end
    add_index("sections", "page_id")
    end

    def down
      drop_table :sections
    end

end

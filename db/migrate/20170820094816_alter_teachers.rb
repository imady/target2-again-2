class AlterTeachers < ActiveRecord::Migration
  def up
      rename_table("teacher_models","trainer_models")
      add_column("trainer_models","trainer_name", :string, :limit => 30)
      rename_column("trainer_models","password","hashed_password")
      change_column("trainer_models","first_name",:integer,:limit => 3)
  end

  def down
    change_column("trainer_models","first_name",:string, :limit => 50)
    rename_column("trainer_models","hashed_password","password")
    remove_column("trainer_models","trainer_name")
    rename_table("trainer_models", "teacher_models")
  end


end

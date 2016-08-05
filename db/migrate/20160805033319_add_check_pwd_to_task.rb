class AddCheckPwdToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :check_pwd, :string
  end
end

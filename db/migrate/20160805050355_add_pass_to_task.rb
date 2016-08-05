class AddPassToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :pass, :boolean
  end
end

class AddTaskInfoToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :people_num, :integer
    add_column :tasks, :location, :string
    add_column :tasks, :password, :string
    add_column :tasks, :finish_way, :text
  end
end

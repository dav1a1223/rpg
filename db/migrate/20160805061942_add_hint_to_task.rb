class AddHintToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :hint, :string
  end
end

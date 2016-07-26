class Delete < ActiveRecord::Migration
  def change
    remove_column :tasks, :landmark, :string
    remove_column :tasks, :pwd_image, :string
  end
end

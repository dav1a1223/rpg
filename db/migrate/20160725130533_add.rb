class Add < ActiveRecord::Migration
  def change
    add_column :tasks, :landmark, :string
    add_column :tasks, :pwd_image, :string
  end
end

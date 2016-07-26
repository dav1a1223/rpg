class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :task_id
      t.string :image

      t.timestamps null: false
    end
  end
end

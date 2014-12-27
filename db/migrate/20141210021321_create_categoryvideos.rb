class CreateCategoryvideos < ActiveRecord::Migration
  def change
    create_table :categoryvideos do |t|
      t.integer :category_id
      t.integer :video_id

      t.timestamps
    end
  end
end

class DropTasksAndCategories < ActiveRecord::Migration[8.0]
  def change
    drop_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :position
      t.boolean :completed
      t.integer :category_id
      t.timestamps
      t.index :category_id
    end

    drop_table :categories do |t|
      t.string :name
      t.timestamps
    end
  end
end

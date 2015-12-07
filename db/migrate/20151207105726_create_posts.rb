class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :category_id
      t.string :tags, array: true, default: []

      t.timestamps null: false
    end
  end
end

class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end

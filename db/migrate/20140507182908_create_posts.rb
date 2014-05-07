class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :created_at
      t.string :updated_at
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end

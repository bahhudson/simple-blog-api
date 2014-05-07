class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end

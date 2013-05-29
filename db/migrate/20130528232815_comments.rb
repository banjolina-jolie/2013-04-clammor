class Comments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :content
      t.integer :post_id
      t.integer :user_id
      # t.string :post
      # t.string :user
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end

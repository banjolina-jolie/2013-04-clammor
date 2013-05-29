class Users < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :subscriptions
      t.string :posts
      t.string :status
      t.string :comments
      t.string :groups
      t.string :name
      t.string :email
    end
  end

  def down
    drop_table :users
  end
end

class Followers < ActiveRecord::Migration
  def up
    create_table :followers do |t|
      t.integer :followers
      t.integer :user_being_followed
    end
  end

  def down
  end
end

class Subscriptions < ActiveRecord::Migration
  def up
    create_table :subscriptions do |t|
      t.timestamp :renew_date
      t.integer :user_id
      t.integer :group_id
    end
  end

  def down
    drop_table :subscriptions
  end
end

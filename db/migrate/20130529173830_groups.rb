class Groups < ActiveRecord::Migration
  def up
    create_table :groups do |t|
      t.string :name
      t.string :motto
      t.string :subscriptions
    end
  end
  def down
    drop_table :groups 
  end
end

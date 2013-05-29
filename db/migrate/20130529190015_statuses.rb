class Statuses < ActiveRecord::Migration
  def up
    create_table :statuses do |t|
      t.integer :user_id
      t.string :content
    end
  end

  def down
    drop_table :statuses
  end
end

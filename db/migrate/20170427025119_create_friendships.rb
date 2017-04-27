class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.integer :user_id, null: false
      t.integer :friend_id, null: false
      t.integer :status, default: 0, null: false

      t.timestamps
    end

    add_index :friendships, [:user_id, :friend_id]
  end
end

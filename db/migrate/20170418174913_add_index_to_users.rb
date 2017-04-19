class AddIndexToUsers < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :email, unique: true
    add_index :users, :session_token, unique: true
    add_index :users, :first_name
    add_index :users, :last_name
  end
end

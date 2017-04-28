class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :user_one_id, null: false
      t.integer :user_two_id, null: false
      t.integer :status, null: false
      t.integer :action_user_id, null: false

      t.timestamps
    end

    add_index :relationships, [:user_one_id, :user_two_id]
  end
end

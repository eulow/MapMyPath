class CreatePaths < ActiveRecord::Migration[5.0]
  def change
    create_table :paths do |t|
      t.string :name, null: false
      t.text :polyline, null: false
      t.float :distance, null: false
      t.string :start_address, null: false
      t.string :end_address, null: false
      t.integer :duration
      t.boolean :done, default: false
      t.date :done_date
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :paths, :user_id
  end
end

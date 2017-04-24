class AddDescriptionColumnToPaths < ActiveRecord::Migration[5.0]
  def change
    add_column :paths, :description, :text
  end
end

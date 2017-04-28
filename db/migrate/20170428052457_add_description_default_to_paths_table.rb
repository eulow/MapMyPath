class AddDescriptionDefaultToPathsTable < ActiveRecord::Migration[5.0]
  def change
    change_column_default :paths, :description, ''
  end
end

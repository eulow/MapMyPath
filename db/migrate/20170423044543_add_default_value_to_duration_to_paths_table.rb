class AddDefaultValueToDurationToPathsTable < ActiveRecord::Migration[5.0]
  def change
    change_column_default :paths, :duration, 0
  end
end

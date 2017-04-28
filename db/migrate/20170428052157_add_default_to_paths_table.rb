class AddDefaultToPathsTable < ActiveRecord::Migration[5.0]
  def change
    change_column_default :paths, :done_date, ''
  end
end

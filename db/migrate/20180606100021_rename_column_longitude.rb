class RenameColumnLongitude < ActiveRecord::Migration[5.1]
  def change
    rename_column :schools, :longtitude, :longitude
  end
end

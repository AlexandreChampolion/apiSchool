class RenameSchoolTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :schools_tables, :schools
  end
end

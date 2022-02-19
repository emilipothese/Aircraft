class RemoveUsercolumnFromSpacecrafts < ActiveRecord::Migration[6.1]
  def change
    remove_column :spacecrafts, :user
  end
end

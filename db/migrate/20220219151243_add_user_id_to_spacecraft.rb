class AddUserIdToSpacecraft < ActiveRecord::Migration[6.1]
  def change
    add_column :spacecrafts, :user, :integer
  end
end

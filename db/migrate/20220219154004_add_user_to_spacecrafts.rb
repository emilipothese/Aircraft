class AddUserToSpacecrafts < ActiveRecord::Migration[6.1]
  def change
    add_reference :spacecrafts, :user, null: false, foreign_key: true
  end
end

class AddCoordinatesToSpacecrafts < ActiveRecord::Migration[6.1]
  def change
    add_column :spacecrafts, :latitude, :float
    add_column :spacecrafts, :longitude, :float
  end
end

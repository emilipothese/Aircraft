class CreateSpacecrafts < ActiveRecord::Migration[6.1]
  def change
    create_table :spacecrafts do |t|
      t.string :name
      t.integer :capacity
      t.string :type
      t.string :location
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

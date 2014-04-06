class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :country
      t.string :city
      t.integer :latitude
      t.integer :longitude
      t.boolean :visited

      t.timestamps
    end
  end
end

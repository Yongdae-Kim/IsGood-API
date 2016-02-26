class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations, primary_key: 'location_id' do |t|
      t.string :si
      t.string :gu
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end

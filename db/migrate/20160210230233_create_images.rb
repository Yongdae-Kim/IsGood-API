class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images, primary_key: 'image_id' do |t|
      t.references :imageable, polymorphic: true, index: true
      t.column :image_created_at, :datetime
    end
  end
end

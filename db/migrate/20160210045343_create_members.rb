class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members, primary_key: 'member_id' do |t|
      t.string :name
      t.integer :party_id
      t.integer :region_id
      t.string :location
      t.string :rank
      t.string :department
      t.string :address
      t.string :email
      t.string :homepage
      t.string :birth
      t.string :career
      t.string :military
      t.string :crime

      t.timestamps
    end
  end
end

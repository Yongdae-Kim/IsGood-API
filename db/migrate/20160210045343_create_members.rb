class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members, primary_key: 'member_id' do |t|
      t.string :name
      t.integer :party_id
      t.integer :region_id
      t.string :constituency
      t.string :rank
      t.string :department
      t.string :address
      t.string :email
      t.string :homepage
      t.string :birth
      t.string :career
      t.string :military
      t.string :crime

      t.references :location, index: true, foreign_key: true

      t.integer :reviews_count, default: 0
      t.float :reviews_grade_total, default: 0

      t.integer :member_stats_count, default: 0
      t.integer :item1_point_total, default: 0
      t.integer :item2_point_total, default: 0
      t.integer :item3_point_total, default: 0
      t.integer :item4_point_total, default: 0
      t.integer :item5_point_total, default: 0

      t.timestamps
    end
  end
end

class CreateMemberStats < ActiveRecord::Migration[5.0]
  def change
    create_table :member_stats, primary_key: 'member_stat_id' do |t|
      t.float :item1_point
      t.float :item2_point
      t.float :item3_point
      t.float :item4_point
      t.float :item5_point
      t.references :member, foreign_key: true, index: true
      t.timestamps
    end
  end
end

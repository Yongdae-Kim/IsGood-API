class CreateMemberElements < ActiveRecord::Migration[5.0]
  def change
    create_table :member_elements, primary_key: 'member_element_id' do |t|
      t.integer :item1_id
      t.integer :item2_id
      t.integer :item3_id
      t.integer :item4_id
      t.integer :item5_id
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCommonCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :common_codes, primary_key: 'common_code_id' do |t|
      t.string :main_id
      t.integer :detail_id
      t.string :code_name
      t.integer :sort_set

      t.timestamps
    end
  end
end

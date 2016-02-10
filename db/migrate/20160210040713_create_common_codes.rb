class CreateCommonCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :common_codes, primary_key: 'common_code_id' do |t|
      t.string :main_id
      t.string :detail_id
      t.string :code_name

      t.timestamps
    end
  end
end

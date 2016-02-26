class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages, primary_key: 'message_id' do |t|
      t.text :content
      t.references :avatar, foreign_key: true, index: true
      t.references :review, foreign_key: true, index: true
      t.timestamps
    end
  end
end

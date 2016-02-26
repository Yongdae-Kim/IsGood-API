class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews, primary_key: 'review_id' do |t|
      t.text :content
      t.float :grade, default: 3.0
      t.integer :messages_count, default: 0
      t.references :member, foreign_key: true, index: true
      t.references :avatar, foreign_key: true, index: true
      t.timestamps
    end
  end
end

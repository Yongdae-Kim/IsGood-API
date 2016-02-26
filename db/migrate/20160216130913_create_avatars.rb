class CreateAvatars < ActiveRecord::Migration[5.0]
  def change
    create_table :avatars, primary_key: 'avatar_id' do |t|
      t.string :nickname
      t.integer :reviews_count, default: 0
      t.integer :messages_count, default: 0
      t.timestamps
    end
  end
end

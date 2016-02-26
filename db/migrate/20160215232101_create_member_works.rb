class CreateMemberWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :member_works do |t|
      t.text :main_session_attendance
      t.text :sub_session_attendance
      t.text :bill_proposal
      t.references :member, foreign_key: true, index: true

      t.timestamps
    end
  end
end

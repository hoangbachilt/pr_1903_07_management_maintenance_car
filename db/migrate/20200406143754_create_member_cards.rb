class CreateMemberCards < ActiveRecord::Migration[5.2]
  def change
    create_table :member_cards do |t|
      t.integer :member_lv

      t.timestamps
    end
  end
end

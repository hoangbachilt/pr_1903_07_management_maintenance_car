class AddMemberCardIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :member_card_id, :integer
  end
end

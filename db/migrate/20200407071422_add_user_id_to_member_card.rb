class AddUserIdToMemberCard < ActiveRecord::Migration[5.2]
  def change
    add_column :member_cards, :user_id, :integer
  end
end

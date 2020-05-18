class AddParentIdToServicePack < ActiveRecord::Migration[5.2]
  def change
    add_column :service_packs, :parent_id, :integer
  end
end

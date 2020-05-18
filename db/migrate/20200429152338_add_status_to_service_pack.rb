class AddStatusToServicePack < ActiveRecord::Migration[5.2]
  def change
    add_column :service_packs, :status, :boolean, default: true
  end
end

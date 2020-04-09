class AddServiceRegisterIdToScheduleMaintenance < ActiveRecord::Migration[5.2]
  def change
    add_column :schedule_maintenances, :service_register_id, :integer
  end
end

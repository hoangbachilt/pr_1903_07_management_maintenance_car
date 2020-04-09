class AddScheduleMaintenanceIdToServiceRegister < ActiveRecord::Migration[5.2]
  def change
    add_column :service_registers, :schedule_mantenance_id, :integer
  end
end

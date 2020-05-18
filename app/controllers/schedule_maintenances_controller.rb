class ScheduleMaintenancesController < ApplicationController
  before_action :user_signed_in?

  def show

  end

  def new
    @schedule_maintenance = ScheduleMaintenance.new
  end

  def create
    @schedule_maintenance = current_user.schedule_maintenances.build(schedule_maintenance_params)
    if @schedule_maintenance.save
      flash[:success] = "Schedule Maintenance successfully"
      redirect_to @schedule_maintenance
    else
      @schedule_maintenance.service_register.service_pack.destroy
      flash[:alert] = "Schedule Maintenance fail"
      redirect_to "new"
    end
  end

  private
  def schedule_maintenance_params
    params.require(:schedule_maintenance).permit(:date, :number_phone, :car_name, :staff_id, :service_register_id)
  end
end

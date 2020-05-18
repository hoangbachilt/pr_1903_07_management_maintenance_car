class ServicePacksController < ApplicationController
  add_breadcrumb "SERVICE PACK", :service_packs_path
  before_action :authenticate_user!, only: [:new ,:create]

  def show
    @service_pack = ServicePack.find_by(id: params[:id])
    unless @service_pack || @service_pack.status == true
      flash[:alert] = "Service Pack not exist"
      redirect_to service_packs_path
    end
  end

  def new
    @service_pack_picked = ServicePack.new
    @service_register = ServiceRegister.new
    @schedule = ScheduleMaintenance.new
  end

  def create
    begin
      ActiveRecord::Base.transaction do
        @service_pack_picked = ServicePack.create(service_pack_params)
        ServicePackPickedService.new(@service_pack_picked).call
        @service_register = current_user.service_registers.new(service_pack_id: @service_pack_picked.id)
        @service_pack_picked.save!
        @service_register.save!
        @schedule = current_user.schedule_maintenances.build(schedule_params)
        @schedule.service_register_id = @service_register.id
        @schedule.save!
      end
      redirect_to root_path
    rescue => e
      flash[:alert] = e.message
      redirect_to new_service_pack_path
    end
  end
  
  private
  def service_pack_params
    params.require(:service_pack).permit(:name, :desciption, :price, :parent_id, automotive_part_details_attributes: [:id, :automotive_part_id])
  end

  def schedule_params
    params.require(:schedule_maintenance).permit(:number_phone, :car_name, :date, :staff_id)
  end
end

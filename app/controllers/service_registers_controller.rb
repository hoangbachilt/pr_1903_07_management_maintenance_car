class ServiceRegistersController < ApplicationController
  before_action :user_signed_in?

  def new
    @service_register = ServiceRegister.new
  end

  def create
    @service_register = current_user.service_registers.build(service_register_params)
    if @service_register.save
      @service_register.total_price = PriceService.new(@service_register.service_pack).call
      @service_register.save
      redirect_to new_schedule_maintenance_path
    else
      flash[:alert] = "Register fail"
      redirect_to "new"
    end
  end

  private
  def service_register_params
    params.require(:service_register).permit(:service_pack_id)
  end
end

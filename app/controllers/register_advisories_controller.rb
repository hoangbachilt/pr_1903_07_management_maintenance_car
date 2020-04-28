class RegisterAdvisoriesController < ApplicationController
  add_breadcrumb "ADVISORY", :new_register_advisory_path

  def new
    @register_advisory = RegisterAdvisory.new
  end

  def create
    if user_signed_in?
      @register_advisory = current_user.build(register_advisory_params)
    else
      @register_advisory = RegisterAdvisory.create(register_advisory_params)
    end
    if @register_advisory.save
      flash[:success] = "You are register advisory success. Waiting staff contact."
      redirect_to root_path
    else
      flash[:alert] = "Register advisory fail"
      redirect_to new_register_advisory_path
    end
  end

  private
  def register_advisory_params
    params.require(:register_advisory).permit(:username, :number_phone, :manufacturer, :staff_id)
  end
end

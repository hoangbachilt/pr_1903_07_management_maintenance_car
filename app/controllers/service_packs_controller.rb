class ServicePacksController < ApplicationController
  add_breadcrumb "SERVICE PACK", :service_packs_path

  def show
    @service_pack = ServicePack.find_by(id: params[:id])
    unless @service_pack
      flash[:alert] = "Service Pack not exist"
      redirect_to service_packs_path
    end
  end
end

class AutomotivePartsController < ApplicationController
  add_breadcrumb "AUTOMOTIVE PARTS", :automotive_parts_path

  def index
    @automotive_parts = AutomotivePart.paginate(page: params[:page], per_page: Settings.per_page)
  end

  def show
    unless AutomotivePart.find_by(id: params[:id])
      @automotive_part = AutomotivePart.find_by(id: params[:id])
      flash[:alert] = "Automotive part not exist"
      redirect_to automotive_parts_path
    end
  end
end

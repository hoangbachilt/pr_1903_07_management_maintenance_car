class AutomotivePartsController < ApplicationController
  add_breadcrumb "AUTOMOTIVE PARTS", :automotive_parts_path

  def show
    @automotive_part = AutomotivePart.find_by(id: params[:id])
    unless @automotive_part
      flash[:alert] = "Automotive part not exist"
      redirect_to automotive_parts_path
    end
  end
end

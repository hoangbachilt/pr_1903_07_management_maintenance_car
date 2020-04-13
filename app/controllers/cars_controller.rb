class CarsController < ApplicationController

  def index
    @cars = Car.paginate(page: params[:page], per_page: 15)
  end

  def show
    unless @car = Car.find_by(params[:id])
      flash[:alert] = "Car not exist"
      redirect_to cars_path
    end
  end
end

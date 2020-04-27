class CarsController < ApplicationController

  def index
    @cars = Car.paginate(page: params[:page], per_page: Settings.per_page)
  end

  def show
    @car = Car.find_by(id: params[:id])
    unless @car
      flash[:alert] = "Car not exist"
      redirect_to cars_path
    end
  end
end

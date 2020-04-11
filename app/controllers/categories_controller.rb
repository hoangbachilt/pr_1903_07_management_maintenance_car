class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  def show
    unless @category = Category.find_by(id: params[:id])
      @cars = []
      redirect_to categories_path, :flash => {:alert => "Brand not exist"}
    else
      @cars = @category.cars.paginate(page: params[:page], per_page: 15)
    end
  end
end

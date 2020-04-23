class CategoriesController < ApplicationController
  add_breadcrumb "Brand", :categories_path
  
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(id: params[:id])
    unless @category
      @cars = []
      redirect_to categories_path, :flash => {:alert => "Brand not exist"}
    else
      @cars = @category.cars.paginate(page: params[:page], per_page: Settings.per_page)
    end
    add_breadcrumb "#{@category.name}", :category_path
  end
end

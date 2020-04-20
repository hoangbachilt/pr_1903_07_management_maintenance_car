class CategoriesController < ApplicationController
  before_action :load_data
  add_breadcrumb "Brand", :categories_path
  
  def index
    @categories = Category.all
  end

  def show
    unless Category.find_by(id: params[:id])
      @cars = []
      redirect_to categories_path, :flash => {:alert => "Brand not exist"}
    else
      @category = Category.find_by(id: params[:id])
      @cars = @category.cars.paginate(page: params[:page], per_page: Settings.per_page)
    end
    add_breadcrumb "#{@category.name}", :category_path
  end

  private
  def load_data
    @automotive_parts = AutomotivePart.paginate(page: params[:page], per_page: Settings.per_page)
  end
end

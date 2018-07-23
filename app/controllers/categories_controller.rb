class CategoriesController < ApplicationController
  def new
    @food = Food.new
    @category = Category.new
  end

  def create
    @food = Category.new(category_params)
    @food.save

    flash[:notice] = 'Category Added'

    redirect_to categories_path
  end

  def index
    @categories = Category.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @foods =  @category.foods
  end
  private
    def category_params
      params.require(:category).permit(:name)
    end
end

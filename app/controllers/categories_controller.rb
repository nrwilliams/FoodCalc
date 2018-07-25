class CategoriesController < ApplicationController
  def new
    @food = Food.new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save

    flash[:notice] = 'Category Added'

    redirect_to categories_show_path
  end

  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)

    redirect_to categories_show_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    flash[:notice] = 'Category Deleted'

    redirect_to categories_show_path
  end

  def show
    @categories = Category.all
    @category = Category.new
  end
  private
    def category_params
      params.require(:category).permit(:name)
    end
end

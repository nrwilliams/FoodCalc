class FoodsController < ApplicationController

  def create
    @food = Food.new(food_params)
    @food.save

    flash[:notice] = 'Food Added'

    redirect_to foods_path
  end

  def index
    @foods = Food.all
    @food = Food.new
    @cateogries = Category.all
    @category = Category.new
  end

  def show
    @categories = Category.all
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.update(food_params)

    redirect_to foods_path
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy

    redirect_to foods_path
  end

  def edit
    @food = Food.find(params[:id])
  end

  def calculator
    @foods = Food.all
    @categories = Category.all
  end


  private
  def food_params
    params.require(:food).permit(:name , :price, :category_id, :category)
  end
end

class FoodsController < ApplicationController

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      render :new
    end
  end

private
  def food_params
    params.require(:food).permit(:name, :cal_consumed)
  end

  def sort_foods
    Food.order()
  end



end

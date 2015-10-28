class FoodsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @food = Food.new
  end

  def create
    @user = User.find(params[:user_id])
    @food = @user.foods.new(food_params)
    if @food.save
      @user.total_consumed += @food.cal_consumed
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


end

class WorkoutsController < ApplicationController
  def new
    @user = current_user
    @workout = Workout.new
  end

  def create
    @workout =Workout.new(workout_params)
    @workout.user = current_user
    if @workout.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      render :new
    end
  end

private
  def workout_params
    params.require(:workout).permit(:name, :cal_burned)
  end


end

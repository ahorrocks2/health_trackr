class HomeController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @foods = Food.order(sort_column + " " + sort_direction)
    @workouts = Workout.all
    @total_cal_consumed = Food.sum(:cal_consumed)
    @total_cal_burned = Workout.sum(:cal_burned)
  end

private
  def sort_column
    Food.column_names.include?(params[:sort]) ? params[:sort] : 'name'
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end

end

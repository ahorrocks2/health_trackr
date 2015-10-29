class HomeController < ApplicationController
  helper_method :sort_food_column, :sort_food_direction, :sort_workout_column, :sort_workout_direction

  def index
    @foods = Food.order(sort_food_column + " " + sort_food_direction)
    @workouts = Workout.order(sort_workout_column + " " + sort_workout_direction)
    @total_cal_consumed = Food.sum(:cal_consumed)
    @total_cal_burned = Workout.sum(:cal_burned)
  end

private
  def sort_food_column
    Food.column_names.include?(params[:sort]) ? params[:sort] : 'name'
  end

  def sort_food_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end

  def sort_workout_column
    Workout.column_names.include?(params[:sort_by]) ? params[:sort_by] : 'exercise_type'
  end

  def sort_workout_direction
    %w[asc desc].include?(params[:direction_by]) ? params[:direction_by] : 'asc'
  end

end

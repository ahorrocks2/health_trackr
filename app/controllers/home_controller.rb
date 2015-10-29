class HomeController < ApplicationController
  def index
    @foods = Food.all
    @workouts = Workout.all
    @total_cal_consumed = Food.sum(:cal_consumed)
    @total_cal_burned = Workout.sum(:cal_burned)
  end

end

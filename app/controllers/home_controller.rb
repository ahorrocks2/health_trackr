class HomeController < ApplicationController
  def index
    @foods = Food.all
    @workouts = Workout.all
  end

end

class UpdateWorkoutTable < ActiveRecord::Migration
  def change
    remove_column :workouts, :name, :string
    add_column :workouts, :exercise_type, :string
  end
end

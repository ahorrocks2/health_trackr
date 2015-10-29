class UpdateWorkoutsWithTotal < ActiveRecord::Migration
  def change
    add_column :workouts, :total_burned, :integer, :default => 0
  end
end

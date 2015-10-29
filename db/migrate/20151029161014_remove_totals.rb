class RemoveTotals < ActiveRecord::Migration
  def change
    remove_column :foods, :total_consumed, :integer
    remove_column :workouts, :total_burned, :integer
  end
end

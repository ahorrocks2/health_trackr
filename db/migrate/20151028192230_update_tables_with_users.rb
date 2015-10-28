class UpdateTablesWithUsers < ActiveRecord::Migration
  def change
    add_column :foods, :user_id, :integer
    add_column :workouts, :user_id, :integer
  end
end

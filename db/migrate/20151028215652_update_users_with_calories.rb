class UpdateUsersWithCalories < ActiveRecord::Migration
  def change
    add_column :users, :total_consumed, :integer, :default => 0
    add_column :users, :total_burned, :integer, :default => 0
  end
end

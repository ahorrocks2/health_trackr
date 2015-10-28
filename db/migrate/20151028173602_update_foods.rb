class UpdateFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :cal, :integer
    add_column :foods, :cal_consumed, :integer
  end
end

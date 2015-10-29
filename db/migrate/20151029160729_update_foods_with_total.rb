class UpdateFoodsWithTotal < ActiveRecord::Migration
  def change
    add_column :foods, :total_consumed, :integer, :default => 0
  end
end

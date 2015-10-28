class Food < ActiveRecord::Base
  validates_presence_of :name, :cal_consumed
  belongs_to :user
  after_save :total_consumed
end

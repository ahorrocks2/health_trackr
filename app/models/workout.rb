class Workout < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :cal_burned
  belongs_to :user

end

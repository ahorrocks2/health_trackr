class Workout < ActiveRecord::Base
  validates_presence_of :name, :cal_burned

end

class Workout < ActiveRecord::Base
  validates_presence_of :exercise_type
  validates_presence_of :cal_burned

end

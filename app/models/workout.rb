class Workout < ActiveRecord::Base
  validates_presence_of :name, :cal_burned
  belongs_to :user

end

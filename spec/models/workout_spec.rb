require 'rails_helper'

describe Workout do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cal_burned }
end

require 'rails_helper'

describe Food do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cal_consumed }
  it { should belong_to :user }
end

require 'rails_helper'

describe 'the process to add a workout' do
  it 'add a workout' do
    visit '/'
    click_on 'Add a Workout'
    fill_in 'Name', :with => 'Run'
    fill_in 'Calories Burned', :with => '200'
    click_on 'Add Workout'
    expect(page).to have_content 'Run'
  end

  it 'throw an error if form not filled' do
    visit '/'
    click_on 'Add a Workout'
    fill_in 'Name', :with => ''
    fill_in 'Calories Burned', :with => ''
    click_on 'Add Workout'
    expect(page).to have_content 'error'
  end
end

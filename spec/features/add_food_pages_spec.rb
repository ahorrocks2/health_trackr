require 'rails_helper'

describe 'the process to add a food' do
  it 'add a food' do
    visit '/'
    click_on 'Add a Food'
    fill_in 'Name', :with => 'Egg'
    fill_in 'Calories Consumed', :with => '100'
    click_on 'Add Food'
    expect(page).to have_content 'Egg'
  end

  it 'throw an error if form not filled' do
    visit '/'
    click_on 'Add a Food'
    fill_in 'Name', :with => ''
    fill_in 'Calories Consumed', :with => ''
    click_on 'Add Food'
    expect(page).to have_content 'error'
  end
end

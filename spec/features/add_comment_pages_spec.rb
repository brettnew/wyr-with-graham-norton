require 'rails_helper'

describe 'the add comments path' do
  it 'will let you add a comment', js: true do
    question = FactoryGirl.create(:question)
    visit root_path
    click_on 'Add Comment'
    fill_in 'Username', :with => 'Stephanie'
    fill_in 'Content', :with => 'I love hippos!'
    click_on 'Add Comment'
    expect(page).to have_content 'Stephanie said...'
    expect(page).to have_no_content 'Username'
  end

  it 'will give you an error if you do not fill in all fields', js: true do
    FactoryGirl.create(:question)
    visit root_path
    click_on 'Add Comment'
    click_on 'Add Comment'
    expect(page).to have_content 'Please fill in the username'
  end
end

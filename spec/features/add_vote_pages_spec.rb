require 'rails_helper'

describe 'the add votes path' do
  it 'will let you vote', js: true do
    question = FactoryGirl.create(:question)
    visit root_path
    click_on 'Vote Option 1'
    expect(page).to have_content '100%'
    expect(page).to have_no_content 'Vote Option 1'
  end
end

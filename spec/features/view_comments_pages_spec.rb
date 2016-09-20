require 'rails_helper'

describe 'the view comments path' do
  it 'will let you view comments' do
    FactoryGirl.create(:comment)
    visit root_path
    click_link 'View all comments'
    expect(page).to have_content 'Hippies are way better'
  end
end

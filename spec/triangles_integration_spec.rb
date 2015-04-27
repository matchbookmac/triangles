require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('The triangle path', {:type => :feature}) do
  it('the user will enter three numbers, and the page will return whether those numbers make a triangle and what type') do
    visit('/')
    fill_in('side_1', :with => 5)
    fill_in('side_2', :with => 5)
    fill_in('side_3', :with => 8)
    click_button('Submit')
    expect(page).to have_content('Your triangle is an isosceles triangle')
  end
end

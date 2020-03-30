require "rails_helper"

feature "User signs up " do
  scenario "successfully" do
    visit root_path
    expect(page).to have_css "h1", text: 'Air BnB'
    click_button 'Sign up'
    expect(page).to have_content "Enter Email:"
  end
end

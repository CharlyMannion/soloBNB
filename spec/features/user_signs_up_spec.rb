require "rails_helper"

feature "User signs up " do
  scenario "successfully" do
    visit '/users/new'
    # expect(page).to have_css "h1", text: 'Air BnB'
    expect(page).to have_content "Email"
  end
end

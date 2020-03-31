require_relative 'test_helpers.rb'
require "rails_helper"

feature "User logs in after sign up" do
  scenario "successfully" do
    sign_up_successfully
    click_on "Log In"
    fill_in "Email", with: "me@example.com"
    fill_in "Password", with: "12345"
    click_button "Login"
    click_on "Add a listing"
    fill_in "Title", with: "A beautiful test"
    fill_in "Text", with: "Some shit about the test"
    click_button "Save Listing"

    expect(page).to have_content "A beautiful test"
    expect(page).to have_content "Some shit about the test"
    # expect(page).to have_content "MyUsername"
  end
end

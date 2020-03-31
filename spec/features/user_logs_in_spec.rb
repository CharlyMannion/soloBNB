require_relative 'test_helpers.rb'
require "rails_helper"

feature "User logs in after sign up" do
  scenario "successfully" do
    sign_up_successfully
    click_on "Log In"
    fill_in "Email", with: "me@example.com"
    fill_in "Password", with: "12345"
    click_button "Login"

    expect(page).to have_content "Logged in as me@example.com."
    expect(page).to have_content "Logged in!"
  end
end

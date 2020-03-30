require_relative 'test_helpers.rb'
require "rails_helper"

feature "User visits sign up page" do
  scenario "successfully" do
    visit '/signup'
    expect(page).to have_content "Email"
  end
end

feature "User enters details" do
  scenario "successfully" do
    sign_up_successfully

    expect(page).to have_content("User was successfully created")
    expect(page).to have_content("me@example.com")
    expect(page).to have_content("MyUsername")
    expect(page).to have_content("Firstname")
    expect(page).to have_content("Lastname")
  end
end

feature "User clicks back after successful sign up and views all users" do
  scenario "successfully" do
    sign_up_successfully
    click_on "Back"

    expect(page).to have_content("Air BnB")
    expect(page).to have_content("Users")
    expect(page).to have_content("me@example.com")
    expect(page).to have_content("New User")
  end
end

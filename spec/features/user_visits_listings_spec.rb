require "rails_helper"

feature "User visits listings page" do
  scenario "successfully" do
    visit '/listings'
    expect(page).to have_content "Listings"
  end
end

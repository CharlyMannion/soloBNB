def sign_up_successfully
  visit '/signup'
  fill_in "Email", with: "me@example.com"
  fill_in 'Username', with: "MyUsername"
  fill_in "First name", with: "Firstname"
  fill_in "Last name", with: "Lastname"
  fill_in "Password", with: "12345"
  fill_in "Password confirmation", with: "12345"
  click_button "Create User"
end

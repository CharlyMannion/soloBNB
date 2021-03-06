# require 'rails_helper'
#
# RSpec.describe "users/index", type: :view do
#   before(:each) do
#     assign(:users, [
#       User.create!(
#         :email => "Email",
#         :username => "Username",
#         :first_name => "First Name",
#         :last_name => "Last Name",
#         :password => ""
#       ),
#       User.create!(
#         :email => "Email",
#         :username => "Username",
#         :first_name => "First Name",
#         :last_name => "Last Name",
#         :password => ""
#       )
#     ])
#   end
#
#   it "renders a list of users" do
#     render
#     assert_select "tr>td", :text => "Email".to_s, :count => 2
#     assert_select "tr>td", :text => "Username".to_s, :count => 2
#     assert_select "tr>td", :text => "First Name".to_s, :count => 2
#     assert_select "tr>td", :text => "Last Name".to_s, :count => 2
#     assert_select "tr>td", :text => "".to_s, :count => 2
#   end
# end

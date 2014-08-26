require 'spec_helper'


describe "the signin process", :type => :feature do
  before :each do
    User.create(:email => 'user@example.com', :password => 'caplin', :password_confirmation => 'caplin')
  end

  it "signs me in" do
    visit '/signup'
    within("#user") do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'
      fill_in 'password_confirmation', :with => 'password'
    end
    click_button 'Sign Up'
    expect(page).to have_content 'Thank you'
  end
end
# describe "the signin process" do
#   it "signs a user in who uses the right password" do
#     visit '/signup'
#     user = User.create(:email => 'user@example.com', :password => 'password')
#     fill_in 'email', :with => 'user@example.com'
#     fill_in 'password', :with => 'password'
#     fill_in 'password_confirmation', :with => 'password'
#     click_button 'Sign Up'
#     page.should have_content 'Thank you'
#   end

#   it "gives a user an error who uses the wrong password" do
#     visit '/signup'
#     user = User.create(:email => 'user@example.com', :password => 'password')
#     fill_in 'email', :with => 'user@example.com'
#     fill_in 'password', :with => 'wrong'
#     fill_in 'password_confirmation', :with => 'password'
#     click_button 'Sign Up'
#     page.should have_content 'invalid'
#   end
# end

require 'rails_helper'

RSpec.describe "Dashboard", type: :feature, js: true do
  it "should not allow logged out user" do
  	visit dashboard_index_path
    
    expect(page).to have_text "Log in"
  end

  it "should allow logged in user dashboard access" do 
  	create_user
  	user_login

  	visit dashboard_index_path

  	expect(page).not_to have_text "Log in"
  end
end

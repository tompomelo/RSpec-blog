require "rails_helper"

RSpec.feature "Signup users" do
    
    # This first scenario is designed to pass
    scenario "with valid credentials" do
        visit "/"
        click_link "Sign up"
        fill_in "Email", with: "example@example.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_link "Sign up"
        
        expect(page).to have_content("You have signed up successfully")
    end
    
    # This second scenario is designed to fail
    scenario "with invalid credentials" do
        visit "/"
        click_link "Sign up"
        fill_in "Email", with: ""
        fill_in "Password", with: ""
        fill_in "Password confirmation", with: ""
        click_link "Sign up"
        
        expect(page).to have_content("You have not signed up successfully")
    end
end
require 'rails_helper'

RSpec.describe "Registered user can Sign In with omniauth", type: :feature do
  describe "user with valid information" do
    it "is signed in successfully" do
      visit root_path
      mock_auth_hash
      click_link "Sign In"
      expect(page).to have_content "instagram user"
    end
  end
end

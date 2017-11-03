require 'rails_helper'

RSpec.feature "login feature" do
  scenario "user login test" do
    visit new_user_session_url

    expect(find("#panel-user")).to have_content("Login User")
  end
end

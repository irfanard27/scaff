require 'rails_helper'

RSpec.describe "User Auth", :type => :feature do
  scenario "user login test show content" do
    visit new_user_session_url

    fill_in "user_email", with: "ards@web.id"
    fill_in "user_password", with: "irfanirfan"
    click_on("Log in")

    expect(page.driver.status_code).to eq(200)
  end

  scenario "user sign up test" do
    visit new_user_registration_url

    fill_in "user_email", with: "inites@web.id"
    fill_in "user_password", with: "irfanirfan"
    fill_in "user_password_confirmation", with: "irfanirfan"
    click_on("Sign up")

    expect(page.driver.status_code).to eq(200)
  end
end

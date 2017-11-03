require 'rails_helper'

RSpec.describe "Contacts", :type=> :feature do

  scenario "input new contact" do
    visit contacts_path
    click_link "New Contact"

    fill_in "contact_name", with: "ini tes"
    fill_in "contact_phone_number", with: "986856546"
    click_on "Create Contact"

    expect(page.driver.status_code).to eq(200)
  end

end

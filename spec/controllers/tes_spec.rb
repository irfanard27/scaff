require "rails_helper"

RSpec.describe ContactsController, :type => :controller do
  describe "GET show" do
    it "returns a success response" do
      #contact = Contact.create! valid_attributes
      get :index
      expect(response.status).to eq(200)
      print(response.status)
    end
  end
end

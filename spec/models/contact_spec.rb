require 'rails_helper'

RSpec.describe Contact do
  it "is not valid without title" do
    album = Contact.new
    expect(album).not_to be_valid
  end

  it 'is valid all pass' do
    album = Contact.new(name:'tes', phone_number:'87868',owner: 1)
    expect(album.save)
  end

  it "orders by name" do
      andy = Contact.create!(name: "Andy", phone_number: "08746", owner: 1)
      gema = Contact.create!(name: "gema", phone_number: "08746", owner: 2)

      expect(Contact.count())
    end
end

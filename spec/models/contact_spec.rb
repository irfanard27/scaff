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

end

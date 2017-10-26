require 'rails_helper'

RSpec.describe Album do
  it "is not valid without title" do
    album = Album.new
    expect(album).not_to be_valid
  end
  
  it 'is valid all pass' do
    album = Album.new(title:'tes', singer:'fan')
    expect(album.save)
  end

end

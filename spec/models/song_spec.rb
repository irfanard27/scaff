require 'rails_helper'

RSpec.describe Song, type: :model do
  it 'test  input songs' do
    song = Song.new
    expect(Song)
  end

  it 'test saving songs' do
    song = Song.new(title:'ha')
    expect(song.save)
  end
end

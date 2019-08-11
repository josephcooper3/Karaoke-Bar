require('minitest/autorun')
require('minitest/rg')

require_relative('../song')

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new('Bohemian Rhapsody', 'Queen')
    @song2 = Song.new('Hey Jude', "The Beatles")
  end

  def test_song_has_name
    assert_equal('Bohemian Rhapsody', @song1.name())
  end

  def test_song_has_artist
    assert_equal('Queen', @song1.artist())
  end

end

require('minitest/autorun')
require('minitest/rg')

require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new('Superstar Suite')
    @room2 = Room.new('Classics Castle')
    @guest1 = Guest.new('Steve')
    @song1 = Song.new('Bohemian Rhapsody', 'Queen')
    @song2 = Song.new('Hey Jude', "The Beatles")
  end

  def test_room_has_name
    assert_equal('Superstar Suite', @room1.name())
  end

  def test_room_has_guests
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guests().count)
  end

  def test_room_has_songs
      @room1.add_song(@song1)
      @room1.add_song(@song2)
      assert_equal(2,@room1.songs().length)
  end


end

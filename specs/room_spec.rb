require('minitest/autorun')
require('minitest/rg')

require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new('Superstar Suite', 4, 5)
    @room2 = Room.new('Classics Castle', 8, 6)
    @guest1 = Guest.new('Steve', 30)
    @guest2 = Guest.new('Freddie', 50)
    @guest3 = Guest.new('John', 70)
    @guest4 = Guest.new('Paul', 90)
    @guest5 = Guest.new('George', 4)
    @song1 = Song.new('Bohemian Rhapsody', 'Queen')
    @song2 = Song.new('Hey Jude', "The Beatles")
  end

  def test_room_has_name
    assert_equal('Superstar Suite', @room1.name())
  end

  def test_room_has_guests
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guests().count())
  end

  def test_room_has_songs
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    assert_equal(2, @room1.songs().count())
  end

  def test_room_can_check_out_guests
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    assert_equal(2, @room1.guests().count())
    @room1.check_out_guest(@guest2)
    assert_equal(1, @room1.guests().count())
  end

  def test_room_has_capacity
    assert_equal(4, @room1.capacity())
  end

  def test_room_capacity__not_full
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    @room1.check_in_guest(@guest4)
    assert_equal(4, @room1.guests().count())
  end

  def test_room_capacity__full
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    @room1.check_in_guest(@guest4)
    @room1.check_in_guest(@guest5)
    assert_equal(4, @room1.guests().count())
  end

  def test_room_has_entry_fee
    assert_equal(5, @room1.entry_fee())
  end

  def test_guests_must_be_able_to_pay_entry_fee
    @room1.check_in_guest(@guest5)
    assert_equal(0, @room1.guests().count())
  end


end

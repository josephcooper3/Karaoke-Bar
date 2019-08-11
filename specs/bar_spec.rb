require('minitest/autorun')
require('minitest/rg')

require_relative('../bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class BarTest < MiniTest::Test

  def setup
    @room1 = Room.new('Superstar Suite')
    @room2 = Room.new('Classics Castle')
    @bar = Bar.new('Karaoke Kingdom', [@room1, @room2])
    @guest1 = Guest.new('Steve')
    @bar.new_guest(@guest1)
  end

  def test_bar_has_name
    assert_equal('Karaoke Kingdom', @bar.name())
  end

  def test_bar_has_room
    assert_equal('Superstar Suite', @bar.rooms()[0].name())
  end

  def test_bar_has_guest
    assert_equal(1, @bar.guests().length)
  end

end

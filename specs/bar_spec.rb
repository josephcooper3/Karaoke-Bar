require('minitest/autorun')
require('minitest/rg')

require_relative('../bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class BarTest < MiniTest::Test

  def setup
    @room1 = Room.new('Pop Palace')
    @room2 = Room.new('Rock Dungeon')
    @bar = Bar.new('Karaoke Kingdom', [@room1, @room2])
    @guest1 = Guest.new('Steve')
    @bar.new_guest(@guest1)
  end

  def test_check_bar_has_name
    assert_equal('Karaoke Kingdom', @bar.name())
  end

  def test_check_bar_has_room
    assert_equal('Pop Palace', @bar.rooms()[0].name())
  end

  def test_check_bar_has_guest
    assert_equal(1, @bar.guests().length)
  end

end

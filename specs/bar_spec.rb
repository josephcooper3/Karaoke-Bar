require('minitest/autorun')
require('minitest/rg')

require_relative('../bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new('Karaoke Kingdom', ['Pop Palace', 'Rock Dungeon'])
    @guest1 = Guest.new('Steve')
    @bar.new_guest(@guest1)
  end

  def test_check_bar_has_name
    assert_equal('Karaoke Kingdom', @bar.name())
  end

  def test_check_bar_has_room
    assert_equal('Pop Palace', @bar.rooms()[0])
  end

  def test_check_bar_has_guest
    assert_equal(1, @bar.guests().length)
  end

end

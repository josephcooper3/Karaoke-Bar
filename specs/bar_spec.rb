require('minitest/autorun')
require('minitest/rg')

require_relative('../bar')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class BarTest < MiniTest::Test

  def setup
    @room1 = Room.new('Superstar Suite', 4, 5)
    @room2 = Room.new('Classics Castle', 8, 6)
    @bar = Bar.new('Karaoke Kingdom', [@room1], 1000)
    @guest1 = Guest.new('Steve', 30)
  end

  def test_bar_has_name
    assert_equal('Karaoke Kingdom', @bar.name())
  end

  def test_bar_has_room
    assert_equal('Superstar Suite', @bar.rooms()[0].name())
  end

  def test_bar_can_add_new_room
    @bar.new_room(@room2)
    assert_equal('Classics Castle', @bar.rooms()[1].name())
  end

  def test_bar_has_money
    assert_equal(1000, @bar.money())
  end

  def test_bar_can_charge
    @bar.charge(@guest1, 5)
    assert_equal(1005, @bar.money())
  end

end

require('minitest/autorun')
require('minitest/rg')

require_relative('../room')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new('Pop Palace')
    @room2 = Room.new('Rock Dungeon')
  end

  def test_check_room_has_name
    assert_equal('Pop Palace', @room1.name())
  end


end

require('minitest/autorun')
require('minitest/rg')

require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new('Steve')
  end

  def test_guest_has_name
    assert_equal('Steve', @guest1.name())
  end

end

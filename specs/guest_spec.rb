require('minitest/autorun')
require('minitest/rg')

require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new('Steve', 30)
  end

  def test_guest_has_name
    assert_equal('Steve', @guest1.name())
  end

  def test_guest_has_cash
    assert_equal(30, @guest1.cash)
  end

  def test_guest_can_pay
    @guest1.pay(5)
    assert_equal(25, @guest1.cash())
  end

end

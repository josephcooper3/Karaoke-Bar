class Bar

  attr_reader :name, :rooms, :money

  def initialize(name, rooms, money)
    @name = name
    @rooms = rooms
    @money = money
    @guests = []
  end

  def new_room(room)
    @rooms << room
  end

  def charge(guest, amount)
    guest.pay(amount)
    @money += amount
  end

  def admit(guest, room)
    return if guest.money() < room.entry_fee()
    room.check_in_guest(guest)
    charge(guest, room.entry_fee())
  end

end

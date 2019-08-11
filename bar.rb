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

end

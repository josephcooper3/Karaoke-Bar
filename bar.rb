class Bar

  attr_reader :name, :rooms

  def initialize(name, rooms)
    @name = name
    @rooms = rooms
    @guests = []
  end

  def new_room(room)
    @rooms << room
  end

end

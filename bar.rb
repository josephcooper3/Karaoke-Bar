class Bar

  attr_reader :name, :rooms, :guests

  def initialize(name, rooms)
    @name = name
    @rooms = rooms
    @guests = []
  end

  def new_guest(guest)
    @guests << guest
  end

end

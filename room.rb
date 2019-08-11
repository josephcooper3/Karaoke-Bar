class Room

  attr_reader :name, :capacity
  attr_accessor :songs, :guests

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @songs = []
    @guests = []
  end

  def add_song(song)
    @songs << song
  end

  def check_in_guest(guest)
    @guests << guest
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

end

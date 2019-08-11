class Room

  attr_reader :name
  attr_accessor :songs, :guests

  def initialize(name)
    @name = name
    @songs = []
    @guests = []
  end

  def add_song(song)
    @songs << song
  end

  def check_in_guest(guest)
    @guests << guest
  end

end

class Room

  attr_reader :name, :capacity, :entry_fee
  attr_accessor :songs, :guests

  def initialize(name, capacity, entry_fee)
    @name = name
    @capacity = capacity
    @entry_fee = entry_fee
    @songs = []
    @guests = []
  end

  def add_song(song)
    @songs << song
  end

  def check_in_guest(guest)
    return if guest.cash() < @entry_fee
    if @capacity > @guests.count()
      @guests << guest
    end
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

end

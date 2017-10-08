class Room

  attr_accessor :name, :cost, :capacity, :guests, :playlist

  def initialize(room_database = {})
    details = room_info.merge(room_database)

    @name = details.fetch(:name)
    @cost = details.fetch(:cost)
    @capacity = details.fetch(:capacity)
    @guests = []
    @playlist = []

  end

  def room_info
    {name: "none",
    cost: 0,
    capacity: 0}
  end

  def guest_count
    return @guests.count
  end

  def guest_check_in(guest_details)
      @guests << guest_details
      if @guests.count > @capacity
        @guests.pop()
        return "Room is full"
      end
  end

  def room_status
    return @guests
  end

  def find_guest_by_name(guest_name)
    @guests.find{|name|
      if name.name == guest_name.name
        return name
      else
        return "Not found"
      end}
  end

  def guest_check_out(guest_name)
    result = find_guest_by_name(guest_name)
    if guest_name == result
      @guests.delete(guest_name)
    end
  end

  def song_count
    return @playlist.count
  end

  def show_songs
    if @playlist.count == 0
      return "Zero songs"
    else
      return "Here are your songs: #{@playlist}"
    end
  end

  def add_song(song_details)
    @playlist << song_details
  end

  def room_capacity(room_details)
    if @guests.count == @capacity
      return "The room has #{@capacity} spaces. It is now full."
    elsif @guests.count < @capacity && @guests.count > 0
      return "The room has #{@capacity} spaces. It is not full."
    else
      return "Empty"
    end
  end

  def charge_guest_for_room(guest_name, fee)
    result = find_guest_by_name(guest_name)
    if result == guest_name
      guest_name.money -= fee
    end
  end


  # def add_room_details(name, cost, capacity)
  #   @name[:name]
  # end

end

require_relative( 'room.rb' )
require_relative( 'guest.rb' )
require_relative( 'songs.rb' )

class Command

  attr_accessor :rooms

  def initialize()
    @rooms = []
  end

  def show_rooms
    if @rooms == []
      return "No rooms built"
    else
      return @rooms
    end
  end

  def add_rooms(room_details)
    @rooms << room_details
    return show_rooms
  end

end

# Creates new room, guest and song hashes to be added.

#Takes in user input to do so.

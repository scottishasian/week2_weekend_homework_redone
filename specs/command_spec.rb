require_relative( '../room.rb' )
require_relative( '../guest.rb' )
require_relative( '../songs.rb' )
require_relative( '../command.rb' )
require( 'minitest/autorun' )
require( 'minitest/rg' )

class TestCommand < MiniTest::Test

  def setup
    @command = Command.new()
    @room = Room.new(name:"Singing Room", cost: 400, capacity: 2)
  end

  def test_show_rooms_empty
    assert_equal("No rooms built", @command.show_rooms)
  end

  def test_add_rooms
    @command.add_rooms(@room)
    rooms = []
    rooms << @room
    assert_equal(rooms, @command.show_rooms)
  end

  def test_create_room
  end


end

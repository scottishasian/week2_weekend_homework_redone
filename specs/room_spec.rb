require_relative( '../room.rb' )
require_relative( '../guest.rb' )
require_relative( '../songs.rb' )
require( 'minitest/autorun' )
require( 'minitest/rg' )

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new(name:"Singing Room", cost: 400, capacity: 2)
    @guest1 = Guests.new(name:"Morag", money: 1000)
    @guest2 = Guests.new(name:"Adam", money: 900)
    @song1 = Songs.new(name:"Song 2", artist: "Blur")
  end

  def test_room_has_name
    assert_equal("Singing Room", @room.name)
  end

  def test_room_has_cost
    assert_equal(400, @room.cost)
  end

  def test_room_has_capacity
    assert_equal(2, @room.capacity)
  end

  def test_guest_count
    assert_equal(0, @room.guest_count)
  end

  def test_guest_check_in
    @room.guest_check_in(@guest1)
    assert_equal(1, @room.guest_count)
  end

  def test_room_status
    @room.guest_check_in(@guest1)
    result = []
    result << @guest1
    assert_equal(result, @room.room_status)
  end

  def test_find_guest_by_name
    @room.guest_check_in(@guest2)
    assert_equal(@guest2.name, @room.find_guest_by_name(@guest2))
  end

  def test_guest_check_out
    @room.guest_check_in(@guest1)
    @room.guest_check_in(@guest2)
    @room.guest_check_out(@guest1)
    assert_equal(1, @room.guest_count)
  end

  def test_song_count
    assert_equal(0, @room.song_count)
  end

  def test_show_songs_empty
    assert_equal("Zero songs", @room.show_songs)
  end

  def test_add_song
    @room.add_song(@song1)
    assert_equal("Here are your songs: #{@room.playlist}", @room.show_songs)
  end

  def test_room_capacity_empty
    assert_equal("Empty", @room.room_capacity(@room))
  end

  def test_room_capacity_one_guest
    @room.guest_check_in(@guest1)
    assert_equal("The room has #{@room.capacity} spaces. It is not full.", @room.room_capacity(@room))
  end

  def test_room_capacity_one_guest
    @room.guest_check_in(@guest1)
    @room.guest_check_in(@guest2)
    assert_equal("The room has #{@room.capacity} spaces. It is now full.", @room.room_capacity(@room))
  end



  # def test_add_room
  #   result = @room.add_room_details(@room.name, @room.cost, @room.capacity)
  #   assert_equal(@room, result)
  # end



end

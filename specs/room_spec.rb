require_relative( '../room.rb' )
require_relative( '../guest.rb' )
require( 'minitest/autorun' )
require( 'minitest/rg' )

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new(name:"Singing Room", cost: 400, capacity: 2)
    @guest1 = Guests.new(name:"Morag", money: 1000)
    @guest2 = Guests.new(name:"Adam", money: 900)
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

  def test_guest_status
    @room.guest_check_in(@guest1)
    result = []
    result << @guest1
    assert_equal(result, @room.guest_status)
  end

  # def test_add_room
  #   result = @room.add_room_details(@room.name, @room.cost, @room.capacity)
  #   assert_equal(@room, result)
  # end



end

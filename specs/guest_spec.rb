require_relative( '../guest.rb' )
require( 'minitest/autorun' )
require( 'minitest/rg' )

class TestGuests < MiniTest::Test

  def setup
    @guests = Guests.new(name:"Zoe", money: 1000)
  end

  def test_guest_has_name
    puts @guests.name
    assert_equal("Zoe", @guests.name())
  end

  def test_guest_has_money
    puts @guests.money
    assert_equal(1000, @guests.money())
  end

end

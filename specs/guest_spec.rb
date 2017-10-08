require_relative( '../guest.rb' )
require( 'minitest/autorun' )
require( 'minitest/rg' )

class TestGuests < MiniTest::Test

  def setup
    @guests = Guests.new(name:"Zoe", money: 1000, favourite_song: "Song 2")
  end

  def test_guest_has_name
    puts @guests.name
    assert_equal("Zoe", @guests.name())
  end

  def test_guest_has_money
    puts @guests.money
    assert_equal(1000, @guests.money())
  end

  def test_guest_has_favourite_song
    assert_equal("Song 2", @guests.favourite_song)
  end

end

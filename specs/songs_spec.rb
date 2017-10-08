require_relative( '../songs.rb' )
require( 'minitest/autorun' )
require( 'minitest/rg' )

class TestSongs < MiniTest::Test

  def setup
    @song = Songs.new(name:"Song 2", artist: "Blur")
  end

  def test_song_has_name
    assert_equal("Song 2", @song.name)
  end

  def test_song_has_artist
    assert_equal("Blur", @song.artist)
  end

end

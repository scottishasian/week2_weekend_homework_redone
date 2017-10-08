class Songs

  attr_accessor :name, :artist

  def initialize(playlist = {})
    details = song_info.merge(playlist)

    @name = details.fetch(:name)
    @artist = details.fetch(:artist)

  end

  def song_info
    {name: "none",
    artist: "none"}
  end
end

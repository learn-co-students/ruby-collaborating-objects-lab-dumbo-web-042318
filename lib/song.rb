class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_and_song = filename.split(" - ")
    artist = Artist.find_or_create_by_name(artist_and_song[0])
    song = Song.new(artist_and_song[1])
    artist.add_song(song)
    song
  end

end

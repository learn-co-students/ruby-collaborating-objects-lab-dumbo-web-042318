class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    new_song = Song.new(file.split(" - ")[1])
    artist = Artist.find_or_create_by_name(file.split(" - ")[0])
    new_song.artist = artist
    artist.add_song(new_song)
    new_song
  end



end

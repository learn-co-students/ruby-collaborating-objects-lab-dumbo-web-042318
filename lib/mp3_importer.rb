require 'pry'



class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def import
    self.files.each do |song|
      new_song = Song.new(song.split(" - ")[1])
      artist = Artist.find_or_create_by_name(song.split(" - ")[0])
      new_song.artist = artist
      artist.add_song(new_song)
    end

  end

  def files
    Dir.glob("#{@path}/*mp3").map { |x| File.basename(x) }
  end

end

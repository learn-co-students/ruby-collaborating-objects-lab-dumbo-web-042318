require 'pry'

class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name 
        @artist = artist
    end

    def self.new_by_filename(filename)
        song = filename.split(" - ")
        new_song = Song.new(song[1])
        new_song.artist = Artist.find_or_create_by_name(song[0])
        new_song.artist.add_song(new_song)
        new_song
        # binding.pry
    end

    

end
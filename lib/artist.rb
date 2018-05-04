require 'pry'

class Artist

    attr_accessor :name 
    attr_reader :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
    end

    def self.all 
        @@all
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        # finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 5)
        # Creates new instance of Artist if none exist (FAILED - 6)
        if Artist.all.find { |artist| artist.name == name} == nil
            new_artist = Artist.new(name)
            new_artist.save
            new_artist
        else 
            Artist.all.find { |artist| artist.name == name}
        end
    end

    def print_songs
        self.songs.each do |song|
            puts song.name 
        end
    end
end

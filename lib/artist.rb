require 'pry'


class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self
    Artist.new(artist) unless @@all.find { |artist_obj| artist_obj.name == artist}
  end

  def print_songs
    self.songs.each {|song| puts song.name }
  end

  def self.find_or_create_by_name(name)
    if @@all.find {|artist| artist.name == name}.nil?
      Artist.new(name)
    else
      @@all.find {|artist| artist.name == name}
    end
  end

end

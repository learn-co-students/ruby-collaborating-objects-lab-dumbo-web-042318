class Artist

    attr_accessor :name 
    attr_reader :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name
        # finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 5)
        # Creates new instance of Artist if none exist (FAILED - 6)
    end

    def print_songs
        # # lists all of the artist's songs
        # @@all.each do |instance|
        #     print instance.songs
        # end
    end
end

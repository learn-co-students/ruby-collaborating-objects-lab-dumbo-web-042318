class Song

    attr_accessor :name, :artist
    attr_reader 

    def initialize(name)
        @name = name 
    end

    def self.new_by_filename
        # creates a new instance of a song from the file that's passed in (FAILED - 13)
    end

end
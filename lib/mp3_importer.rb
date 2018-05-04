require 'pry'

class MP3Importer 

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files 
        files_list = Dir[("#{self.path}/*")]
        # normalizes the filename to just the mp3 filename with no path (FAILED - 10)
        files_list.map do |file|
            binding.pry
        end
    end

    def import 
        # imports the files into the library by creating songs from a filename (FAILED - 11)
    end
# binding.pry
end
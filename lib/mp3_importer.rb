class MP3Importer
  attr_accessor :path  

  def initialize(path)
    @path = path
    self.files
  end

  def files
    path_list = Dir["#{@path}/**/*.mp3"]
    @mp3list = path_list.map { | path |
      path.split("/")[-1]
    }
  end

  def import
    #binding.pry
    @mp3list.each { | filename |
      Song.new_by_filename(filename)
    }
  end
end

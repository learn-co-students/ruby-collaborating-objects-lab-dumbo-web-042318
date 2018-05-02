require "pry"

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path)[2..-1]
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end

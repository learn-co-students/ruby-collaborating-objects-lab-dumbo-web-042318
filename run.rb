require_relative "./lib/artist.rb"
require_relative "./lib/song.rb"
require_relative "./lib/mp3_importer.rb"
require 'pry'

test_music_path = "./spec/fixtures/mp3s"
music_importer = MP3Importer.new(test_music_path)

binding.pry 
true

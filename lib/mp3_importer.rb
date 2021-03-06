class MP3Importer

attr_accessor :path

def initialize(path)
  @path = path
end

def files
  Dir.entries(@path).collect do |file|
    if file.include?(".mp3")
      file
    end
  end.compact
end

def import
  files.each do |song|
    Song.new_by_filename(song)
  end
end

end

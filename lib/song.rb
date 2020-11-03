class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    puts "self.new_by_filename on the song gets called"
    song = Song.new(file)
    str = file.delete_suffix(".mp3")
    strArr = str.split("-")
    song.name = strArr[1].strip
    song.genre = strArr[2].strip
    artist_name=(strArr[0].strip)
    puts "Song ARTIST"
    puts song.artist
    puts song.artist.name
    song
  end

  def artist_name=(name)
    puts "DDES IS GET CALLED?"
    artist = find_or_create_by_name(name)
    artist.add_song(self)
  end

end

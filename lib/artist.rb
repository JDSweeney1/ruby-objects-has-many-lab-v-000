class Artist
  attr_accessor :name
  attr_reader :songs

  @@song_count = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.song << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    self.songs.collect{|song| @@song_count << song}
    @@song_count.length
  end
end

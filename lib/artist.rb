class Artist
  attr_accessor :name
  attr_reader :songs

  @@song_count = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
  end

  def song_count
    self.songs.collect{|song| @@song_count << song}
    @@song_count.length
  end
end

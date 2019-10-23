class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    temp_array = file_name.split(" - ")
    artist_name = temp_array[0]
    song_name = temp_array[1]
    file_type = temp_array[2]

    song = Song.new(song_name)
    song.artist.name = artist_name

    song

  end

  def artist_name(name)
  end

end

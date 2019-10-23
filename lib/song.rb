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
    song.artist = Artist.find_or_create_by_name(artist_name)
    # called .name on song.artist
    # undefined method `name=' for nil:NilClass
    # therefore song.artist is nil
    song
  end

  def artist_name(artist_name)
    temp_array = file_name.split(" - ")
    artist_name = temp_array[0]
    song_name = temp_array[1]
    file_type = temp_array[2]
    
    song.artist = Artist.find_or_create_by_name(artist_name)
  end

end

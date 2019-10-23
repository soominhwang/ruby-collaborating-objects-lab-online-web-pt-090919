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

  def self.new_by_filename(name)
    song = Song.new(name)
    #song.name = name.split(" - ")[1]
    song.artist.name = name.split(" - ")[0]
  end

  def artist_name(name)
  end

end

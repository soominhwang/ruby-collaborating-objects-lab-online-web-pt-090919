class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        artist
      end
    end

    Artist.new(name)
  end

  def print_songs
    # Song.all.collect do |song|
    #   if song.artist == self
    #     song
    #   end
    # end
    Song.all.each do |song|
        if song.artist == self
          puts song.name
        end
    end
  end

end

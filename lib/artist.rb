require "pry"

class Artist
  @@all = []
  attr_reader :name

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(name)
    @name = name
    save
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  #   def songs
  def new_song(song, genre)
    coo_song = Song.new(song, self, genre)
  end

  def genres
    genres = []
    Song.all.select do |song|
      if song.artist.name == self.name
        genres << song.genre
      end
    end
    genres
  end
end

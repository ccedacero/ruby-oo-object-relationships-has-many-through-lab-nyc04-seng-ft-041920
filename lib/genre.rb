require "pry"

class Genre
  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    save
  end

  def songs
    Song.all.select do |song|
      song.genre.name == self.name
      #   binding.pry
    end
  end

  #
  def artists
    my_songs = []
    Song.all.select do |song|
      if song.genre.name == self.name
        # binding.pry
        my_songs << song.artist
      end
    end
    my_songs
  end
end

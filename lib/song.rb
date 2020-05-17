class Song
  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    save
  end
end

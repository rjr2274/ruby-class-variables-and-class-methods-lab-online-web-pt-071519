require "pry"
class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :genre, :artist
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @genre_count = {}
    @@genres.each do |genre|
      @genre_count[genre] = @@genres.count(genre)
    end
    @genre_count
    binding.pry
  end

end

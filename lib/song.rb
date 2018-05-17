require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    all_artists = []

    @@artists.each do |artist|
      all_artists <<  artist
    end
    all_artists.uniq
  end

  def self.genres
    all_genres = []

    @@genres.each do |genre|
      all_genres << genre
    end
    all_genres.uniq
  end

  def self.genre_count
    all_genres = Hash.new 0
    @@genres.each do |genre|
      all_genres[genre] += 1
    end
    all_genres

  end

  def self.artist_count
    all_artists = Hash.new 0

    @@artists.each do |artist|
      all_artists[artist] += 1
    end
    all_artists
  end



end

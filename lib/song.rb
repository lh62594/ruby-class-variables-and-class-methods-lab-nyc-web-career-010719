require 'pry'

class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

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
    genre_hash = {}

    @@genres.each do |element|
      if genre_hash.include?(element)
        genre_hash[element] += 1
      else
        genre_hash[element] = 1
      end
    end

    genre_hash

  end

  def self.artist_count

    artist_hash = {}

    @@artists.each do |element|
      if artist_hash.include?(element)
        artist_hash[element] += 1
      else
        artist_hash[element] = 1
      end
    end

    artist_hash

  end


end #this is the end of the Song class

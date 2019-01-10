class Song


  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre

      @@count += 1

        @@genres << genre

        @@artists << artist

    end

    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq
    end

    def self.artists
      @@artists.uniq
    end

    def self.genre_count
     @@genres.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}

    # hash = Hash.new(0)
    # array.each{|key| hash[key] += 1}
    # hash


    end

    def self.artist_count

       @@artists.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}


    end
end

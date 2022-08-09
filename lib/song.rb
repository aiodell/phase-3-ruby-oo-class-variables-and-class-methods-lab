class Song

    # keep track of songs
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    # get the new count
    def self.count
        @@count
    end

    # control for duplicates
    def self.artists
        @@artists.uniq
    end

    # control for duplicates
    def self.genres
        @@genres.uniq
    end

    # iterate through and count how many songs are in each genre
    # if no genre exists for new song, create genre
   def self.genre_count
       genre_count = {}
       @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
        # with tally method
        #@@genres.tally
    end

    # iterate through artists to count how many songs there are
    # if the song does not exist add the song to artist
   def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
        # with tally method
        # @@artists.tally
    end
end
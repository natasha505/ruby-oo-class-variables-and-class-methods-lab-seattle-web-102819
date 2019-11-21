class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name =name
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

#   class meth, returns HASH of genres w/number of songs
#   create hash
#   iterate over @@genres check is @@genres has that genre,
#       if yes, +1
#       if no, create new k/v pair
##      {"pop" => 3, "etc" => 4..........}
    def self.genre_count
        genre_count_hash = {}
        @@genres.each do  |genre| 
            if genre_count_hash[genre]
                genre_count_hash[genre] += 1
            else 
                genre_count_hash[genre] = 1
            end 
        end 
        genre_count_hash
    end 


    def self.artist_count
        artist_count_hash = {}
        @@artists.each do |artists|
            if artist_count_hash[artists]
                artist_count_hash[artists] += 1
            else
                artist_count_hash[artists] = 1
            end
        end 
        artist_count_hash
    end 

end 
require "pry"

class Song
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        if @@artists.include? artist
            @@artist_count[artist] += 1
        elsif !@@artists.include? artist
            # @@artists << artist
            @@artist_count[artist] = 1
        end

        if @@genres.include? genre
            @@genre_count[genre] += 1
        elsif !@@genres.include? genre
            # @@genres << genre
            @@genre_count[genre] = 1
        end

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
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

    binding.pry
end

new_song = Song.new("timmy", "Timothy", "Polka")

binding.pry


# artists = @@songs.map(&:artist).uniq

# artist_count = {}
# @@songs.each do |obj|
#     key = obj.artist
#     if artist_count[key] == nil
#         artist_count[key] = 1
#     else
#         artist_count[key] += 1
#     end
# end
# artist_count

# genres = @@songs.map(&:genre).uniq

# genre_count = {}
# @@songs.each do |obj|
#     key = obj.genre
#     if genre_count[key] == nil
#         genre_count[key] = 1
#     else
#         genre_count[key] += 1
#     end
# end
# genre_count
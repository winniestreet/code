require 'Terminal-Table'
class Song
  attr_accessor :name, :album, :length
  def initialize(name, album, length)
    @name = name
    @album = album
    @length = length
  end

  def openInYoutube(artist, song)

# https://www.youtube.com/results?search_query=red+hot+chilli+peppers
url = "https://www.youtube.com/results?search_query=#{artist.gsub(" ", "+")}+#{song.gsub(" ", "+")}"
puts url
system "open #{url}"
  end
end

class Artist
  attr_accessor :name, :nationality, :genre, :song
  def initialize(name, nationality, genre, song)
    @name = name
    @nationality = nationality
    @genre = genre
    @song = song
  end
end

artist1 = Artist.new("Anderson Paak", "American", "hip-hop", Song.new(
"The Bird", "Malibu", "4.08"))
artist2 = Artist.new("Japanese Wallpaper", "Australian", "Indie",
Song.new("Forces", "Japanese Wallpaper", "4:13"))
artist3 = Artist.new("Kaytranada", "American", "Rap", Song.new("Glowed Up",
"99.9%", "5.04"))

puts" **********************************************
 ***************** WINTUNES *******************
 **********************************************"

rows = []
rows << ["1", artist1.name, artist1.song.name, artist1.song.album, artist1.genre]
rows << :separator
rows << ["2", artist2.name, artist2.song.name, artist2.song.album, artist2.genre]
rows << :separator
rows << ["3", artist3.name, artist3.song.name, artist3.song.album, artist3.genre]
table = Terminal::Table.new :headings => ['Number', 'Artist', 'Song', 'Album', 'Genre'],
 :rows => rows

puts table

puts "Which song would you like to listen to?"
choice = gets.chomp
if choice.to_i == 1
  artist1.song.openInYoutube(artist1.name, artist1.song.name)
elsif choice.to_i == 2
  artist2.song.openInYoutube(artist2.name, artist2.song.name)
elsif choice.to_i == 3
  artist3.song.openInYoutube(artist3.name, artist3.song.name)
end




# artist.song.openInYoutube(artist.name, artist.song.name)

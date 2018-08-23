require "pry"

class Artist
      extend Concerns::Findable

    @@all = []

attr_accessor :name

def initialize(name)
  @name = name
  @songs = []
end

def self.all
  @@all
end

def self.destroy_all
  @@all.clear
end

def save
 @@all << self
 end
 
 def self.create(name)
  artist = self.new(name)  
  artist.save
  artist
end

def songs
  # Artist.songs << song
  # binding.pry
  # song.artist = self
  artist = artist.song
end
  

end

























# require "pry"
# class Artist
#     extend Concerns::Findable
    
#   @@all = []
#   attr_accessor :name 
#   attr_reader :songs
  
#   def initialize(name)
#     @name = name
#     # @@all << self
#     @songs = []
#   end
  
#   def self.all
#     @@all
#   end
  
#   def save
#     @@all << self
#   end
  
#   def self.destroy_all
#     self.all.clear
#   end
  
#   def self.create(name)
#     artist = self.new(name)
#     artist.save
#     artist
#   end
  
#   def genres
#     songs.collect {|s| s.genre}.uniq
#   end
  
#     def add_song(song)
#       song.artist = self unless song.artist
#       songs << song unless songs.include?(song)
#     end
    
# end
#this class demo does several things. it initializes on a name and genre of movie. it also has several class variables that keep count of all the movie instances and all the genres. it has several class methods such as showing us the movie count and all the genres (unique ones only!)

class Movies
 attr_accessor :name
 attr_accessor :genre

 @@count = 0
 @@genres = []

 def initialize(name, genre)
   @name= name
   @genre = genre
   @@count += 1
   @@genres << self.genre
 end

  def self.count
   @@count
  end

 def self.genres
   @@genres.uniq
 end

  def self.genre_count
   genres = {}
   @@genres.each do |genre|
     if genres.include? genre
       genres[genre] += 1
     else
       genres[genre] = 1
     end
   end
   return genres
 end

end



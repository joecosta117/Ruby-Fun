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

end


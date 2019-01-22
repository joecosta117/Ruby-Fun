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



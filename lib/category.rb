class Category
   # each category has a name
   attr_accessor :name, :player

   @@all = []

   # binding.pry

   def initialize
      @name = name
      @@all << self
   
   end



end
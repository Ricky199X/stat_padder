class Category
   # each category has a name, players, and urls
   attr_accessor :name, :players, :player_links

   @@all = []

   def save
      @@all << self
   end


   def self.all
      @@all
      # binding.pry
   end

end
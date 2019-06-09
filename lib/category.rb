class Category
   # each category has a name, players, and urls
   attr_accessor :name, :players, :player_links

   @@all = []

   # def save
   #    @@all << self
   # end

   def list_all
   # objective: return a bunch of instance of categories 
   puts <<-DOC
   \n
         1. Points
         2. Rebounds
         3. Assists
         4. Blocks
         5. Steals
         6. Minutes
      DOC
   end

   # def self.all
   #    @@all
   #    # binding.pry
   # end

end
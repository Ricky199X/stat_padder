class Category

    # 1. Accepts an array of hashes
   # 2. Iterates thru that array of hashes, assigns each category that the array contains to an instance of the category
   # 3. stores those instances in @@all
   # 4. Displays those categories in a numbered list format 

   # each category has a name, players, and urls
   attr_accessor :name, :players, :player_links

   @@all = []

   def save
      @@all << self
   end


   def self.all
      @@all
      binding.pry
   end

end
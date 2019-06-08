class Category
   # each category has a name
   attr_accessor :name

   @@all = []

   # binding.pry

   def initialize
      @@all << self
      self
   end

   # [{:category_name=>"Points",
   #    :players=>["James Harden", "Paul George", "Giannis Antetokounmpo", "Joel Embiid", "LeBron James"],
   #    :player_links=>
   #     ["https://basketball.realgm.com/player/James-Harden/Summary/1598",
   #      "https://basketball.realgm.com/player/Paul-George/Summary/2305",
   #      "https://basketball.realgm.com/player/Giannis-Antetokounmpo/Summary/49629",
   #      "https://basketball.realgm.com/player/Joel-Embiid/Summary/49880",
   #      "https://basketball.realgm.com/player/LeBron-James/Summary/250"]}]...

   def self.create_from_collection(category_array)
      category_array.each do |category_hash|
         category_hash.each do |key, value|
            if key == :category_name
            self.new(key)
            end
         end
      end
   end

   def self.display_categories
   end

   def self.all
      @@all
   end


   # 1. Accepts an array of hashes
   # 2. Iterates thru that array of hashes, assigns each category that the array contains to an instance of the category
   # 3. stores those instances in @@all
   # 4. Displays those categories in a numbered list format 


end
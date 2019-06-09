class Category
   # each category has a name
   attr_accessor :catgory_name, :players, :player_links

   @@all = []

   def initialize
      @@all << self
      self
      binding.pry
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
      category_array.each do |category|
         self.new(category)
      end
   end

   # def add_categories(categories)
   #    categories.each do ||
   # end

   def self.display_categories
      @@all.each do |category|
         puts category
      end
   end

   def self.all
      @@all
   end


   # 1. Accepts an array of hashes
   # 2. Iterates thru that array of hashes, assigns each category that the array contains to an instance of the category
   # 3. stores those instances in @@all
   # 4. Displays those categories in a numbered list format 


end
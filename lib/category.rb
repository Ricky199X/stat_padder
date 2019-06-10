class Category
   # each category has a name, players, and urls
   attr_accessor :name, :players, :player_links

   @@all = []

   # Category.new = [{:name=>"Points",
   #    :players=>["James Harden", "Paul George", "Giannis Antetokounmpo", "Joel Embiid", "LeBron James"],
   #    :player_links=>
   #     ["https://basketball.realgm.com/player/James-Harden/Summary/1598",
   #      "https://basketball.realgm.com/player/Paul-George/Summary/2305",
   #      "https://basketball.realgm.com/player/Giannis-Antetokounmpo/Summary/49629",
   #      "https://basketball.realgm.com/player/Joel-Embiid/Summary/49880",
   #      "https://basketball.realgm.com/player/LeBron-James/Summary/250"]}]

   def initialize(name:, players:, player_links:)
      @name = name
      @players = players
      @player_links = player_links
   end

   def self.create_from_collection(categories)
      categories.each do |element|
        category = self.new(element)
        category.save
      end
   end

   def save
      @@all << self
   end

   def self.all
      @@all
   end
end




   # def list_categories
   #    # Category.all -> returns list of major statistical categories in the 2019 NBA season
   #    self.all.each_with_index do |category, i|
   #       "   \n#{i + 1}. #{category.name}  "
   #    end
   # end
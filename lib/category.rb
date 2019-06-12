class Category
   # each category has a name, players, and urls
   attr_accessor :name, :players, :player_links

   @@all = []

   def initialize(name:, description:)
      @name = name
      @players = players
      @description = description
      @@all << self
   end

   def self.all
      @@all
   end
  
    
   def self.reset_all
      self.all.clear
   end
end




   # def list_categories
   #    # Category.all -> returns list of major statistical categories in the 2019 NBA season
   #    self.all.each_with_index do |category, i|
   #       "   \n#{i + 1}. #{category.name}  "
   #    end
   # end
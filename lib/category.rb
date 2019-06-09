class Category
   # each category has a name, players, and urls
   attr_accessor :name, :players, :player_links

   @@all = []

   # def initialize(name, players, player_links)
   #    @name = name
   #    @players = players
   #    @player_links = player_links
   # end

   def save
      @@all << self
   end


   def self.all
      @@all
      # binding.pry
   end

end
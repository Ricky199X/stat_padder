class Player
   attr_accessor :name, :url, :des, :bio

   @@all = []

   def initialize(name = nil, url = nil, des = nil, bio = nil)
      @name = name
      @url = url
      @des = des
      @bio = bio
      @@all << self
   end

  
   def self.all
      @@all
      # binding.pry
   end

   def self.list_players
      self.all.each_with_index do |player, i|
         puts "#{i + 1}. #{player.name}"
      end
   end

   def self.all_names
      @@all.collect {|player| player.name}
   end

   def create_shaq
      self.all.each_with_index do |player, i|
         if i == 32
            player.name = "Shaquille O' Neal"
            player.url = "https://en.wikipedia.org/wiki/Kazaam"
            player.des = "The Big Cactus"
            player.bio = "Legend."
         end
      end
      # binding.pry
   end


 

   # a = Player.new("", "coll.com", "yep", "no")

end
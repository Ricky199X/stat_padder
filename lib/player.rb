class Player
   attr_reader :name, :url
   attr_accessor :des, :bio

   @@all = []

   def initialize(name, url)
      @name = name
      @url = url
      @des = des
      @bio = bio
      @@all << self
   end

  
   def self.all
      @@all
   end
  
    
   def self.reset_all
      self.all.clear
   end

   def self.list_players
      self.all.each_with_index do |player, i|
         puts " \n#{i + 1}. #{player.name} \n "
      end
   end

   def 
   end

end
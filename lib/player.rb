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
   end


   def self.list_players
      self.all.each_with_index do |player, i|
         puts "#{i + 1}. #{player.name}"
      end
   end

   def self.all_names
      @@all.collect {|player| player.name}
   end

end
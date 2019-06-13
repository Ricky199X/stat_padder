class Player
   attr_reader :name, :url
   attr_accessor :bio

   @@all = []

   def initialize(name, url)
      @name = name
      @url = url
      @bio = bio
      @@all << self
   end

   # def self.save
   #    @@all << self
   # end

  
   def self.all
      @@all
   end
  
    
   def self.reset_all
      self.all.clear
   end

end
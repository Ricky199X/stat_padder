class Player
   attr_reader :name, :url

   @@all = []

   def initialize(name = nil, url = nil)
      @name = name
      @url = url
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
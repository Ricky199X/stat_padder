class Player
   attr_accessor :name, :url

   @@all = []

   

   def initialize(name:, url:)
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
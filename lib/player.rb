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
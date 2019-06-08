class Category
   # each category has a name
   attr_accessor :name

   @@all = []

   # binding.pry

   def initialize
      @name = name
      @@all << self
   
   end

   def self.create_from_collection(category_array)
      category_array.each do |category|
         self.new(category)
      end
   end


end
class Category
   # each category has a name, players, and urls
   attr_accessor :category_name, :players

   @@all = []

   def self.scrape_categories
      categories = []

      categories << self.scrape_realGM

      #should return a list of categories
      # Points
      # Rebounds
      # Assists
      # Blocks
      # Steals
      # Minutes

      # category_1 = self.new
      # category_1.name = "Points"
      # category_1.players = ["James Harden", "Paul George", "Giannis Antetokounmpo", "Joel Embiid", "LeBron James"]
 
 
      # category_2 = self.new
      # category_2.name = "Rebounds"
      # category_2.players = ["Andre Drummond", "Joel Embiid", "DeAndre Jordan", "Rudy Gobert", "Clint Capela"]

      # category_3 = self.new
      # category_3.name = "Assists"
      # category_3.players = ["Russell Westbrook", "John Wall", "Kyle Lowry", "LeBron James", "Jeff Teague"]

      # category_4 = self.new
      # category_4.name = "Blocks"
      # category_4.players = ["Myles Turner", "Mitchell Robinson", "Anthony Davis", "Rudy Gobert", "Brook Lopez"]

      # category_5 = self.new
      # category_5.name = "Steals"
      # category_5.players = ["Paul George", "Robert Covington", "James Harden", "Chris Paul", "Russell Westbrook"]

      # category_6 = self.new
      # category_6.name = "Minutes"
      # category_6.players = ["Bradley Beal", "Paul George", "James Harden", "Russell Westbrook", "Jrue Holiday"]

      # @@all = [category_1, category_2, category_3, category_4, category_5, category_6]
     
   end

   def self.scrape_realGM
      page = open(https://basketball.realgm.com/nba/stats)
      parsed_HTML = Nokogiri::HTML(page)
   end


   # 1. Accepts an array of hashes
   # 2. Iterates thru that array of hashes, assigns each category that the array contains to an instance of the category
   # 3. stores those instances in @@all
   # 4. Displays those categories in a numbered list format 


end
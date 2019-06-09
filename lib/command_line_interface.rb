require_relative '../lib/homepage_scraper.rb'

class CLI
   def run
      self.start
      HomepageScraper.scrape_categories
      self.menu
   end


   def start
      input = nil
      while input != "exit" and input != "start" do
         puts "Hello, basketball head! Welcome to Stat-Padder! For a list of categories, enter 'start'\n"
         input = gets.strip.downcase
       end
       
      if input == "start"
         puts <<-DOC
         \n
         1. Points
         2. Rebounds
         3. Assists
         4. Blocks
         5. Steals
         6. Minutes
      DOC
      end
   end


   def menu
      puts "\n\nEnter the number of the category or the catagory name for more information."
   end

   # def display_categories
   #    #Category.all -> returns list of major statistical categories in the 2019 NBA season
   #    # Category.all.each_with_index do |category, i|
   #    #    puts "#{i + 1} #{category.title}"
   
   # end

   # accepts user input here to determine which category's players they'd like to see

#   def display_players_and_totals
#       # Player.all.sort
#      # code here -> ultimately returns the names of the players in that category + their total in that category
#   end

   

   
end
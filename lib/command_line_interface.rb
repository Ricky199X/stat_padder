require_relative '../lib/homepage_scraper.rb'

class CLI
   def run
      # self.start
      # HomepageScraper.scrape_homepage
      HomepageScraper.scrape_all
      # HomepageScraper.scrape_player_names
      # HomepageScraper.scrape_player_urls
      # self.display_categories
   end


   def start
      input = nil
      while input != "exit" and input != "start" do
         puts "Hello, basketball head! Welcome to Stat-Padder! For a list of categories, enter 'start'\n"
         input = gets.strip.downcase
       end
       
      if input == "start" #Category class will need to be utilized here
         puts <<-DOC
            1. Points
            2. Rebounds
            3. Assists
            4. Blocks
            5. Steals
            6. Minutes
         DOC

         puts "\nPlease select a category you would like to view.\n"
      end


   end


           

   # def display_categories
   #    #Category.all.sort -> returns list of major statistical categories in the 2019 NBA season (category names will be in a hash)
     
   # end

   # accepts user input here to determine which category's players they'd like to see

#   def display_players_and_totals
#       # Player.all.sort
#      # code here -> ultimately returns the names of the players in that category + their total in that category
#   end

   

   
end
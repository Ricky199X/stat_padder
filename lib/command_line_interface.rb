require_relative '../lib/homepage_scraper.rb'

class CLI
   def run
      self.start
      scrape_categories
      display_categories
      list_categories
      menu
   end


   def start
      input = nil
      while input != "exit" and input != "start" do
         puts "Hello, basketball head! Welcome to Stat-Padder! For a list of categories, enter 'start'\n"
         input = gets.strip.downcase
       end
       
      if input == "start"
         Category.all
         puts "\nPlease select a category you would like to view.\n"
      end
   end


           

   def display_categories
      #Category.all.sort -> returns list of major statistical categories in the 2019 NBA season (category names will be in a hash)
     
   end

   # accepts user input here to determine which category's players they'd like to see

#   def display_players_and_totals
#       # Player.all.sort
#      # code here -> ultimately returns the names of the players in that category + their total in that category
#   end

   

   
end
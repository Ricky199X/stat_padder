require_relative '../lib/homepage_scraper.rb'

class CLI
   def run
      self.start
      HomepageScraper.scrape_categories
      Category.display_categories
      # list_categories
      # menu
   end


   def start
      input = nil
      while input != "exit" and input != "start" do
         puts "Hello, basketball head! Welcome to Stat-Padder! For a list of categories, enter 'start'\n"
         input = gets.strip.downcase
       end
       
      if input == "start"
         Category.display_categories
         puts "\nPlease select a category you would like to view.\n"
      end
   end


   def display_categories
      #Category.all -> returns list of major statistical categories in the 2019 NBA season
      Category.all.each_with_index do |category, i|
         puts "#{i + 1} #{category.title}"
      end
   end

   # accepts user input here to determine which category's players they'd like to see

#   def display_players_and_totals
#       # Player.all.sort
#      # code here -> ultimately returns the names of the players in that category + their total in that category
#   end

   

   
end
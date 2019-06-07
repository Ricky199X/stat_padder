require_relative '../lib/homepage_scraper.rb'

class CLI
   def run
      self.greeting
      HomepageScraper.scrape_homepage
      self.display_categories
   end

   def greeting
      puts "Hello, basketball head! Welcome to Stat-Padder!  For a list of categories, enter 'start'"
   end

   # user enters "start"

   def display_categories
      #Category.all.sort -> returns list of major statistical categories in the 2019 NBA season (category names will be in a hash)
      puts <<-DOC
         1. Points 
         2. Rebounds
         3. Assists
         4. Blocks
         5. Steals
         6. Minutes
      DOC
   end

   # accepts user input here to determine which category's players they'd like to see

  def display_players_and_totals
      # Player.all.sort
     # code here -> ultimately returns the names of the players in that category + their total in that category
  end

   

   
end
require_relative '../lib/homepage_scraper.rb'

class CLI
   def run
      self.greeting
      HomepageScraper.scrape_category_names
      # Scraper.scrape_top5
      # Scraper.scrape_category_totals
   end

   def greeting
      puts "Hello, basketball head! Welcome to Stat-Padder!  For a list of categories, enter 'start'"
   end

   def categories
      # puts out a list of major statistical categories in the 2019 NBA season 
   end

   
end
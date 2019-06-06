class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"

   def self.scrape_category_names
      page = open(BASE_URL)
      binding.pry
   end

   def self.scrape_player_names
   end

   def self.scrape_player_totals
   end

end
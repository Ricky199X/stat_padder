class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"

   def self.scrape_category_names
      categories = []
      page = open(BASE_URL) # page is now returning content 
      parsed_HTML = Nokogiri::HTML(page)
      category_names = parsed_HTML.css("div.category-name").text.split(/(?=[A-Z])/)
   end

   # def self.scrape_player_names
   # end

   # def self.scrape_player_totals
   # end

end
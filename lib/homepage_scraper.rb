class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"
   PLAYER_URL = ""

   def self.scrape_homepage
      page = open(BASE_URL) # page is now returning content 
      parsed_players = Nokogiri::HTML(page)

      category_names = parsed_HTML.css("div.category-name").map(&:text)
      category_player_links = parsed_HTML.css("a").attribute("href").value
      category_totals = parsed_HTML.css("span.stat").map(&:text)

      
      binding.pry
   end



end
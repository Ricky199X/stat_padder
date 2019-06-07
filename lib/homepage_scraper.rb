class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"
   

   def self.scrape_homepage
      players_array = []
      page = open(BASE_URL) # page is now returning content 
      parsed_players = Nokogiri::HTML(page)

      category_names = parsed_players.css("div.category-name").map(&:text)
      category_totals = parsed_players.css("span.stat").map(&:text)
      category_player_names = parsed_players.css("span.player-name").collect do |link|
         link.css("a").text.strip
      end
      category_player_links = parsed_players.css("span.player-name").collect do |link|
         link.css("a").attribute('href').value
      end

      
      binding.pry
   end



end
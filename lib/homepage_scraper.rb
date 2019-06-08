class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"
   

   # def self.scrape_homepage
   #    page = open(BASE_URL) # page is now returning content 
   #    parsed_players = Nokogiri::HTML(page)

   #    category_array = parsed_players.css("div.category-name").map(&:text)
      

   #    player_names = parsed_players.css("span.player-name").collect do |link|
   #       link.css("a").text.strip
   #    end

   #    # player_links = parsed_players.css("span.player-name").collect do |link|
   #    #    link.css("a").attribute('href').value
   #    # end
   #    # binding.pry

   # end

   def self.scrape_categories
      page = open(BASE_URL)
      parsed_HTML = Nokogiri::HTML(page)
      category_array = []
      parsed_HTML.css("div.overall-leader").each do |category|
         category_array << category.css("div.category-name").text
      end
      return category_array
      # binding.pry
   end

   def self.scrape_player_names
      page = open(BASE_URL)
      parsed_HTML = Nokogiri::HTML(page)
      player_array = []
      parsed_HTML.css("span.player-name").each do |link|
         player_array << link.css("a").text.strip
      end
      return player_array
      binding.pry
   end

   def self.scrape_player_urls
      page = open(BASE_URL)
      parsed_HTML = Nokogiri::HTML(page)
      player_urls = []
      parsed_HTML.css("span.player-name").each do |url|
         player_urls << url.css("a").attribute("href").value
      end
      return player_urls
      # binding.pry
   end
end


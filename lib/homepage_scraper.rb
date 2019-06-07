class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"
   

   def self.scrape_homepage
      categories_array = []
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

      the only logical way to pull this off is to create an array of hashes using the data above

      # all exist in div.category-container

      # parsed_players.css('div.category-container').each do |category|
      #    categories_array.push({
      #       category: category.css("div.category-name").text,
      #       # player: category.css("span.player-name").attribute("a").text,
      #       # total: category.css("span.stat").text
      #    })
      # end
      # binding.pry
      # categories_array
   end



end
class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"
   

   def self.scrape_homepage
      page = open(BASE_URL) # page is now returning content 
      parsed_players = Nokogiri::HTML(page)

      category_array = parsed_players.css("div.category-name").map(&:text)
      

      player_names = parsed_players.css("span.player-name").collect do |link|
         link.css("a").text.strip
      end

      # player_links = parsed_players.css("span.player-name").collect do |link|
      #    link.css("a").attribute('href').value
      # end
      # binding.pry

   end



end

# will need 6 stats objects

# Stats class - needs a player array
# can have a name + have a number

# @@all in stats 

# Stats <-> Player  
# # will need find or create by methods 

# As they choose a person, they'll need an array of stats for that player
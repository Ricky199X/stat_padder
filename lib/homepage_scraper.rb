class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"

   # def self.scrape_categories
   #    page = open(BASE_URL)
   #    parsed_HTML = Nokogiri::HTML(page)
   #    category_array = []
   #    parsed_HTML.css("div.overall-leader").each do |category|
   #       category_array << category.css("div.category-name").text
   #    end
   #    return category_array
   #    # binding.pry
   # end

   # def self.scrape_player_names
   #    page = open(BASE_URL)
   #    parsed_HTML = Nokogiri::HTML(page)
   #    player_array = []
   #    parsed_HTML.css("span.player-name").each do |link|
   #       player_array << link.css("a").text.strip
   #    end
   #    return player_array
   #    # binding.pry
   # end

   # def self.scrape_player_urls
   #    page = open(BASE_URL)
   #    parsed_HTML = Nokogiri::HTML(page)
   #    player_urls = []
   #    parsed_HTML.css("span.player-name").each do |url|
   #       player_urls << "https://basketball.realgm.com" + url.css("a").attribute("href").value
   #    end
   #    return player_urls
   #    # binding.pry
   # end

   # time for second level scrape

   def self.scrape_all
   page = open(BASE_URL)
   parsed_HTML = Nokogiri::HTML(page)
   players_array = []
   parsed_HTML.css("div.overall-leader").each do |category|
      players_array.push({
        category_name: category.css("div.category-name").text,
        players: category.css("")
      #   player_url: "https://basketball.realgm.com" + data.css("span.player-name a").attribute("href").value
      })
    end
    players_array
    binding.pry
  end

end



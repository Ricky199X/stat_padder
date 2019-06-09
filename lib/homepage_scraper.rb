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
   #    player_array
   #    binding.pry
   # end

   # def self.scrape_player_urls
   #    page = open(BASE_URL)
   #    parsed_HTML = Nokogiri::HTML(page)
   #    player_urls = []
   #    parsed_HTML.css("span.player-name").each do |url|
   #       player_urls << "https://basketball.realgm.com" + url.css("a").attribute("href").value
   #    end
   #    return player_urls
   #    binding.pry
   # end


   def self.scrape_all
   page = open(BASE_URL)
   parsed_HTML = Nokogiri::HTML(page)
   categories = parsed_HTML.css("div.overall-leader").map do |category|
      {
        category_name: category.css("div.category-name").text,
        players: category.css("span.player-name a").map(&:text),
        player_links: category.css("span.player-name").map {|url| "https://basketball.realgm.com" + url.css("a").attribute("href").value}  
      #   "https://basketball.realgm.com" + category.css("a").attr("href").value
      }
    end
    categories
    binding.pry
  end

#   def self.scrape_bio(profile_url)
#       #scrapes individual player profiles to 
#       # get more information 
  
#       site_html = profile_url
#       page = open(site_html)
#       profile = Nokogiri::HTML(page)
  
#       bio_hash = {}

#       profile.css("div.profile-box").each do |href|

#          # {

#          #}

#   end

end



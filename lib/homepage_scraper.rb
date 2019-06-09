class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"

    def self.scrape_categories
    page = open(BASE_URL)
    parsed_HTML = Nokogiri::HTML(page)
    parsed_HTML.css("div.overall-leader").each do |cat|
      category = Category.new
        category.name = cat.css("div.category-name").text
        category.players = cat.css("span.player-name a").map(&:text)
        category.player_links = cat.css("span.player-name").map {|url| "https://basketball.realgm.com" + url.css("a").attribute("href").value}   
      category.save
    end
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



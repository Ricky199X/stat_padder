class HomepageScraper

   BASE_URL = "https://basketball.realgm.com/nba/stats"

  def self.scrape_categories
    page = open(BASE_URL)
    parsed_HTML = Nokogiri::HTML(page)
    categories = []
    parsed_HTML.css("div.overall-leader").map do |category|
      categories.push({
      name: category.css("div.category-name").text,
      players: category.css("span.player-name a").map(&:text),
      player_links: category.css("span.player-name").map {|url| "https://basketball.realgm.com" + url.css("a").attribute("href").value}
      })
    end
    return categories
    # binding.pry
  end
  
  # def self.scrape_categories
  #   page = open(BASE_URL)
  #   parsed_HTML = Nokogiri::HTML(page)
  #   parsed_HTML.css("div.overall-leader").each do |cat|
  #     category = Category.new
  #     category.name = cat.css("div.category-name").text
  #     category.players = cat.css("span.player-name a").map(&:text)
  #     category.player_links = cat.css("span.player-name").map {|url| "https://basketball.realgm.com" + url.css("a").attribute("href").value}   
  #     category.save

  #   end

  #    binding.pry	
  # end	
  
end



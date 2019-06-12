class HomepageScraper

   BASE_URL = "https://www.nba.com/history/nba-at-50/top-50-players"
  #  PROFILE_URL = BASE_URL + 

  def self.scrape_players
    page = open(BASE_URL)
    parsed_HTML = Nokogiri::HTML(page)
    name_lis = parsed_HTML.css("div.field-item li")
    # binding.pry

    # name = name_lis.css("strong a").map(&:text)
    # url = parsed_HTML.css("ul li strong a").collect {|url| url.attribute("href").value}
    # binding.pry
    name_lis.to_a.compact.each do |li|
      name = li.css("strong a").text.strip rescue ""
      # binding.pry
      url = li.at("a")[:href] rescue nil
      Player.new(name,url)
    end
    # binding.pry
  end

  #   players = []

  #   parsed_HTML.css("div").collect do |player|
  #     players.push({
  #       name: player.css("ul li strong a").text,
  #       url: player.css("ul li strong a href").value.strip
  #     })
  #   end
  #   players
  # end

    #self.description will receive a player link -> will scrape the dscription on the players landing page and return that 
      #description

  # def self.scrape_description(player_link)
  # end

  
end



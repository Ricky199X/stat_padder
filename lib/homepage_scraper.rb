class HomepageScraper

   BASE_URL = "https://www.nba.com/history/nba-at-50/top-50-players"
  #  PROFILE_URL = BASE_URL + 

  def self.scrape_players
    page = open(BASE_URL)
    parsed_HTML = Nokogiri::HTML(page)
    players = []
    name = parsed_HTML.css("ul li strong a").map(&:text)
    url = parsed_HTML.css("ul li strong a").map {|url| url.attribute("href").value}
    # binding.pry

  end
    # players = []

    # parsed_HTML.css("div").map do |player|
    #   players.push({
    #     name: 
    #   })
    # end
    # players
  # end


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
    categories
    # binding.pry
  end
  
  def self.player_name
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

  # def self.scrape_bios
  #   # desired return value
  #   # [{Player Name: Name, Player Position: Position, 
  #   # Current Team: "Team,
  #   # Birth Place: Birth Place,
  #   # Nationality: Nationality,
  #   # Height: Height,
  #   # Weight: Weight,
  #   # Hand: "left or right",
  #   # Current NBA Status: "signed",
  #   # Current Agent: "mr.agent",
  #   # Draft Entry: "2019",
  #   # Early Entry Info: "2018",
  #   # Drafted: "1st",
  #   # Pre-Draft Team: "Suffolk University",
  #   # High School:}]

  #   # using Myles Turner to do a simple scrape of the page 
  #   page = open(PROFILE_URL)
  #   profile = Nokogiri::HTML(page)
  #   player_bio = {}
  #   # parsed_HTML.css each do ||

  # end



  
end



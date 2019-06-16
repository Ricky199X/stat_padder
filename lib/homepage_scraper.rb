class HomepageScraper

   BASE_URL = "https://www.nba.com/history/nba-at-50/top-50-players"
  #  PROFILE_URL = BASE_URL + 

  def self.scrape_players
    page = open(BASE_URL)
    parsed_HTML = Nokogiri::HTML(page)
    name_lis = parsed_HTML.css("div.field-item li")
    name_lis.each do |li|
      name = li.css("strong a").text.strip
      url = li.at("a")[:href] rescue nil
      Player.new(name,url)
      # binding.pry
  end

    def self.scrape_bio(player_object)
      url = player_object.url
      html = Nokogiri::HTML(open(url))
      player_object.des = html.css("p.article__detail--inline-caption").text.strip
      player_object.bio = html.css("div.paragraphs p").map{|paragraph| paragraph.content}
      # puts "#{html.css("div.paragraphs p")[0].text}\n\n"
      # puts "#{html.css("div.paragraphs p")[1].text}\n\n"
      # puts "#{html.css("div.paragraphs p")[2].text}\n\n"
      # puts "#{html.css("div.paragraphs p")[3].text}\n\n"
      # binding.pry
      end
    end

  #   def display_bio
  #     variable = html.css("div.paragraphs p")
  #     variable.each_with_index do |paragraph, i| 
  #        puts variable[i]
  #     end
  #  end
  
end







# def self.scrape_players
#   page = open(BASE_URL)
#   parsed_HTML = Nokogiri::HTML(page)
#   name_lis = parsed_HTML.css("div.field-item li")
#   player_info = {}
#   name_lis.collect do |li|
#     player_info = {
#     name: li.css("strong a").text.strip,
#     url: li.css("a")[0]&.attr("href")
#   }
#   end

#   html=Nokogiri::HTML(open(player_info[:url]))
#   player_info[:des] = html.css("p.article__detail--inline-caption").text.strip
#   player_info[:bio] = html.css("p").map {|paragraph| paragraph.content}
#     # Player.new(name,url)
#   player_info
#     binding.pry
# end
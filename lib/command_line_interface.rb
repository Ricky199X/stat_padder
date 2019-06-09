require_relative '../lib/homepage_scraper.rb'

class CLI
   def run
      self.start
      HomepageScraper.scrape_categories
      self.menu
   end


   def start
      input = nil
      while input != "exit" and input != "start" do
         puts "Hello, basketball head! Welcome to Stat-Padder! For a list of categories, enter 'start'\n"
         input = gets.strip.downcase
       end
       
      if input == "start"
         puts <<-DOC
         \n
         1. Points
         2. Rebounds
         3. Assists
         4. Blocks
         5. Steals
         6. Minutes
      DOC
      end
   end


   def menu
      puts "\n\nEnter the number of the category for more information."
      input = gets.strip.downcase.to_i

      case input
         when 1
               puts <<-DOC
            1. James Harden
            2. Paul George
            3. Giannis Antetokounmpo
            4. Joel embiid
            5. Lebron James
         DOC
         when 2
            puts <<-DOC
            1. Andre Drummond
            2. Joel embiid
            3. Deandre Jordan
            4. Rudy Gobert
            5. Clint Capela
         DOC
         when 3
            puts <<-DOC
            1. Russell westbrook
            2. john wall
            3. kyle lowry
            4. lebron james
            5. jeff teague
         DOC
         when 4
            puts <<-DOC
            1. myles turner
            2. mitchell robinson
            3. anthony davis
            4. rudy gobert
            5. brook lopez
         DOC
         when 5
            puts <<-DOC
            1. paul george
            2. robert covington
            3. james harden
            4. chris paul
            5. russell westbrook
         DOC
         when 6 
            puts <<-DOC
            1. bradley beal
            2. paul george
            3. james harden
            4. russell westbrook
            5. jrue holiday
         DOC
      end
   end

   # def display_categories
   #    #Category.all -> returns list of major statistical categories in the 2019 NBA season
   #    # Category.all.each_with_index do |category, i|
   #    #    puts "#{i + 1} #{category.title}"
   
   # end

   # accepts user input here to determine which category's players they'd like to see

#   def display_players_and_totals
#       # Player.all.sort
#      # code here -> ultimately returns the names of the players in that category + their total in that category
#   end

   

   
end
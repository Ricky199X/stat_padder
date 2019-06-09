require_relative '../lib/homepage_scraper.rb'

class CLI
   def run
      HomepageScraper.scrape_categories
      start
      menu
      # player_menu
   end


   def start
      puts "Hello, basketball head! For a list of categories, enter 'start'.\n"
      input = nil
      while input != "exit" and input != "start" do
         input = gets.strip.downcase

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
         else
            puts "Hello, basketball head! For a list of categories, enter 'start'.\n"
         end
      end
   end

   def list_categories
      # at this point, we begin building out our Category class
      @categories = Category.list_all
   end

   def menu
      puts "\nEnter the number or the name of the category for more information or exit to leave."
      next_input = nil
      while next_input != "exit" do
         next_input = gets.strip.downcase

         if next_input == "1" || next_input == "points"
               puts <<-DOC
            1. James Harden
            2. Paul George
            3. Giannis Antetokounmpo
            4. Joel embiid
            5. Lebron James
         DOC

            puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"

         elsif next_input == "2" || next_input == "rebounds"
            puts <<-DOC
            1. Andre Drummond
            2. Joel embiid
            3. Deandre Jordan
            4. Rudy Gobert
            5. Clint Capela
         DOC

            puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"


         elsif next_input == "3" || next_input == "assists"
            puts <<-DOC
            1. Russell westbrook
            2. john wall
            3. kyle lowry
            4. lebron james
            5. jeff teague
            DOC

            puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"

         elsif next_input == "4" || next_input == "blocks"
            puts <<-DOC
            1. myles turner
            2. mitchell robinson
            3. anthony davis
            4. rudy gobert
            5. brook lopez
         DOC

            puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"


         elsif next_input == "5" || next_input == "steals"
            puts <<-DOC
            1. paul george
            2. robert covington
            3. james harden
            4. chris paul
            5. russell westbrook
         DOC

            puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"


         elsif next_input == "6" || next_input == "minutes"
            puts <<-DOC
            1. bradley beal
            2. paul george
            3. james harden
            4. russell westbrook
            5. jrue holiday
         DOC

            puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"

         elsif next_input == "exit"
            goodbye

         elsif next_input == "back"
            puts <<-DOC
            \n
            1. Points
            2. Rebounds
            3. Assists
            4. Blocks
            5. Steals
            6. Minutes
            DOC
            puts "\nSelect a category:"

            else
               puts <<-DOC
               \n
               1. Points
               2. Rebounds
               3. Assists
               4. Blocks
               5. Steals
               6. Minutes
            DOC
            puts "\nEnter the number of the category for more information or exit to leave."
            
         end
      end
   end

   # def player_menu

   # end

   def goodbye
      puts "\nRemember, basketball head: ball is life."
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
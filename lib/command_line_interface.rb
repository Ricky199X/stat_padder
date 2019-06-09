require_relative '../lib/homepage_scraper.rb'

class CLI
   def run
      HomepageScraper.scrape_categories
      start
      menu
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

   def menu
      puts "\nEnter the number of the category for more information or exit to leave."

      next_input = nil
      while next_input != "exit" do
         next_input = gets.strip.downcase

            if next_input == "1"
                  puts <<-DOC
               1. James Harden
               2. Paul George
               3. Giannis Antetokounmpo
               4. Joel embiid
               5. Lebron James
            DOC
            elsif next_input == "2"
               puts <<-DOC
               1. Andre Drummond
               2. Joel embiid
               3. Deandre Jordan
               4. Rudy Gobert
               5. Clint Capela
            DOC
            elsif next_input == "3"
               puts <<-DOC
               1. Russell westbrook
               2. john wall
               3. kyle lowry
               4. lebron james
               5. jeff teague
            DOC
            elsif next_input == "4"
               puts <<-DOC
               1. myles turner
               2. mitchell robinson
               3. anthony davis
               4. rudy gobert
               5. brook lopez
            DOC
            elsif next_input == "5"
               puts <<-DOC
               1. paul george
               2. robert covington
               3. james harden
               4. chris paul
               5. russell westbrook
            DOC
            elsif next_input == "6" 
               puts <<-DOC
               1. bradley beal
               2. paul george
               3. james harden
               4. russell westbrook
               5. jrue holiday
            DOC
            elsif next_input == "exit"
               goodbye
            else
            puts "\nEnter the number of the category for more information or exit to leave."
         end
      end

   end


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
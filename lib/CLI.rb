# refactor CLI

# chain of command:

class CLI
   def run
   # Scrapes the data, loads everything up 
   HomepageScraper.scrape_players
   puts "\nHello, basketball head! Welcome!\n"
   welcome
   end


   def welcome
      user_input = nil 
   
      until user_input == "exit"
         puts "\nThese are the 50 players who defined the game of basketball as we know it. Pick a legend to learn more.\n"
         puts ""
         list_players
         puts "\nSelect a player by number:"
         user_input = gets.strip.downcase

         case 
            when user_input.to_i > 0 #need to also account for it being less than 50 (Kareem not returning)
            puts ""
               choose_player(user_input)
               display_player_info(user_input)

            when user_input == "y"
               puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
               display_player_bio(user_input)
               puts "Do you want to look at another player?"
               choose_player
               
            when user_input == "exit"
               puts "\n\nRemember, basketball head, ball is life.\n\n"
            else 
               puts "You seem confused, bruh, how's a fresh start sound?"
         end
      end   
   end

   # ------  Helpers  --------

      def choose_player(index)
         player = Player.all[index.to_i - 1]
         display_player_info(player)
         # binding.pry
      end
   
      def list_players
         Player.all.each_with_index do |player, i|
            puts "#{i + 1}. #{player.name}"
         end
      end


   def display_player_info(input)
      # url = input.url
      HomepageScraper.scrape_bio(input)
      puts " "
      puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
      puts " "
      puts "You picked #{input.name}."
      puts "\n\n"
      puts input.des

      # binding.pry
      puts " "
      puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
      puts " "
      puts input.bio
      puts "\n\n\n"
      # binding.pry
      puts "\n\n"
   end
   
   
end

   



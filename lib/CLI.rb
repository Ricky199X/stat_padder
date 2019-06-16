# refactor CLI

# chain of command:

class CLI
   def run
   # Scrapes the data, loads everything up 
   HomepageScraper.scrape_players
   puts  "\nTo see the 50 players who defined the game of basketball as we know it. Enter 'list'\n"
   welcome
   end


   def welcome
      user_input = nil 
   
      until user_input == "exit"
         puts ""
         user_input = gets.strip.downcase

         case 
            when user_input == "list"
               Player.list_players
            puts "\nSelect a player by number:"

            when user_input.to_i > 0 #need to also account for it being less than 50 (Kareem not returning)
            puts ""
               choose_player(user_input)
        
            puts "To look at another player, enter a number from 1 - 50."

            when user_input.to_i > 0
               choose_player(user_input)
               
            when user_input == "exit"
               puts "\n\nRemember, basketball head, ball is life.\n\n"
            else 
               puts "You seem confused, bruh, how's a fresh start sound?"
         end
      end   
   end

   # ------  Helpers  --------

      def choose_player(index)
         # binding.pry
         player = Player.all[index.to_i - 1]
         # display_player_info(player)

         HomepageScraper.scrape_bio(player)
         puts " "
         puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
         puts " "
         puts "You picked #{player.name}."
         puts "\n\n"
         puts player.des
         puts " "
         puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
         puts " "
         puts player.bio
         puts "\n\n\n"
         # binding.pry
         puts "\n\n"
         
      end
      
     
   
   def print_players(from_input)
      puts ""
      puts "---------- NBA Legends #{from_input} - #{from_input+9} ----------"
      puts ""
      Player.all[from_input-1, 10].each.with_index(from_input) do |player, index|
        puts "#{index}. #{player.name}"
      end  
    end 
   
end

   

#

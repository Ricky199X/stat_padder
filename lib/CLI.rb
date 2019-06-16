class CLI
   def run
   # Scrapes the data, loads everything up 
   HomepageScraper.scrape_players
   # HomepageScraper.scrape_bio
   puts "\n"
   puts " ------------------------------------------------------------ "
   puts " ------------------------------------------------------------ "
   puts " ------------------------------------------------------------ "
   puts " ---------------------- Stat-Padder ------------------------- "
   puts " ------------------------------------------------------------ "
   puts " ------------------------------------------------------------ "
   puts " ------------------------------------------------------------ "
   puts  "\nGreetings, basketball head. To see the 50 players who defined the game of basketball as we know it. Enter 'start'\n"
   welcome
   end


   def welcome
      user_input = nil 
   
      until user_input == "exit"
         puts ""
         user_input = gets.strip.downcase

         case 
            when user_input == "start"
               puts "\nSelect a page of players you would like to view (1-10, 11-20, 21-30, 31-40,41-50)"
               
               input = gets.strip.to_i
               print_players(input)

               puts "\nPick a player by number: "

            when user_input.to_i > 0
            puts ""
               choose_player(user_input)
        
            puts "To look at another player, enter a number from 1 - 50 or enter 'exit' to leave."

            when user_input.to_i > 0
               choose_player(user_input)
               
            when user_input == "exit"
               puts "\n\nRemember, basketball head, ball is life.\n\n"
            else 
               puts "\nYou seem confused, bruh! How's a fresh start sound? Enter 'start' to go back to the main menu or hit 'Exit' to leave!."
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
      puts " "
      puts player.des
      puts " "
      puts "Would you like to learn more about #{player.name} ? Enter 'y'."
      puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
         input = gets.strip.downcase
            if input == "y"
               puts " "
               puts player.bio
            else
               start
            end
      puts "\n"
         # binding.pry
      puts "\n"    
   end
      
   # def view_bio(index)
   #    puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
   #    puts " "
   #    puts player.bio
   #    puts "\n"
   #       # binding.pry
   #    puts "\n"

   # end

   def print_players(from_input)
      puts ""
      puts "---------- NBA Legends #{from_input} - #{from_input+9} ----------"
      puts ""
      Player.all[from_input-1, 10].each.with_index(from_input) do |player, index|
        puts "#{index}. #{player.name}"
      end  
   end 
#    puts "\n"
#    Player.list_players
# puts "\nSelect a player by number or enter 'exit' to leave at anytime:"
   
end

   


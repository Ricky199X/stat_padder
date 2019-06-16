class CLI
   def run
   # Scrapes the data, loads everything up 
   HomepageScraper.scrape_players
   puts "\n"
   puts " ------------------------------------------------------------ "
   puts " ------------------------------------------------------------ "
   puts " ------------------------------------------------------------ "
   puts " ---------------------- Stat-Padder ------------------------- "
   puts " ------------------------------------------------------------ "
   puts " ------------------------------------------------------------ "
   puts " ------------------------------------------------------------ "
   puts  "\nGreetings, basketball head. To see the 50 players who defined the game of basketball as we know it. Enter 'list'\n"
   welcome
   end


   def welcome
      user_input = nil 
   
      until user_input == "exit"
         puts ""
         user_input = gets.strip.downcase

         case 
            when user_input == "list"
            puts "\n"
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
               puts "You seem confused, bruh, how's a fresh start sound? Enter 'list'."
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
      
   
end

   


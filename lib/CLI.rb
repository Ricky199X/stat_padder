class CLI
   def run
      HomepageScraper.scrape_players
         puts "\n"
         puts " ------------------------------------------------------------ "
         puts " ------------------------------------------------------------ "
         puts " ------------------------------------------------------------ "
         puts " ---------------------- Stat-Padder ------------------------- "
         puts " ------------------------------------------------------------ "
         puts " ------------------------------------------------------------ "
         puts " ------------------------------------------------------------ "
         puts  "\nGreetings, basketball head. These are the 50 players who defined the game of basketball as we know it."
      welcome
   end

   def welcome
      puts " "
      puts "<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>"
      puts "\n"

      Player.list_players

      puts "\nPick a player by number: "
         
      player_input = gets.strip.to_i

      while player_input < 1 || player_input > Player.length
         puts "Please enter a valid input!"

         player_input = gets.strip.to_i
      end
        
         player = Player.find(player_input)
         HomepageScraper.scrape_bio(player) if player.bio == nil 
      

      puts " "
      puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
      puts " "
      puts "You picked #{player.name}."
      puts " "
      puts player.des
      puts " "
      puts "Would you like to learn more about #{player.name}? Enter 'Y' for more info or 'exit' to leave."
      puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
         input = gets.strip.downcase
            if input == "y" || input == "yes"
               puts " "
               puts player.bio
            else
               puts ""
               goodbye
               return
            end
               puts "\n"
               puts "\n" 
               
               puts "Would you like to see more players?"
         input = gets.strip.downcase
            if input == "y" || input == "yes"
               welcome
            elsif input == "n" || input == "no"
               puts ""
               goodbye
               return
            else
               puts ""
               puts "I don't understand that answer."
               welcome
            end
   end

   def goodbye
      puts "Remember, basketball head...ball is life."
   end

   
end


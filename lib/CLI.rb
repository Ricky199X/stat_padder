# refactor CLI

# chain of command:

class CLI
   def run
   # Scrapes the data, loads everything up 
   HomepageScraper.scrape_players
   # it runs the program - has several methods in it, that all execute in succession
   welcome #-> welcome the user, accepts an input to get to the next level of the menu
      #if input == "start" -> self.list_players
      #else -> puts "I'm sorry, I thought you wanted to learn something today!"

   self.choose_player # -> accepts an index,  
      # -> sets local variable of player, then uses the index to pick the player's position in the Player.all array 
      # scrapes the player's bio, loads it up
      # calls self.display_player_info(player)
   end

   def welcome
      puts " "
      puts "\nHello, basketball head! To get started, enter 'start'.\n"
      user_input = gets.strip.downcase

      if user_input == "start"
         puts "\nThese are the 50 players who defined the game of basketball as we know it. Pick a legend to learn more.\n"

         # menu_input = gets.strip.downcase
         Player.list_players
      elsif user_input == "exit"
         puts "\n\nRemember, basketball head, ball is life.\n\n"
         return 
      else
         puts "I'm sorry, I thought you wanted to learn something today!"
         welcome
      end
   end


   def choose_player
      index = gets.strip.to_i - 1
      player = Player.all[index]

      HomepageScraper.scrape_bio(player)
      self.display_player_info(player)

      puts "For more information on this player, hit 'Y'. To exit, hit 'N'. "

      input = gets.strip.downcase

      if input == "y"
         self.display_player_bio(player)
      elsif input == "n"
         puts ""
         puts "\n\nRemember, basketball head, ball is life.\n\n"
         exit 
      else
         puts " "
         puts "You seem confused, bruh, let me send you back to the main menu!"
         puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
         welcome
      end
   end


      # ------  Helpers  --------

   def display_player_info(player)
      puts " "
      puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
      puts " "
      puts "You picked #{player.name}."
      puts "\n\n"
      puts player.des
      puts "\n\n"
      return
   end

   def display_player_bio(player)
      puts player.bio
      puts "\n\n\n"
      puts "To go back to the main menu, enter 'back' "
      self.back
   end

   # refactored list players 
 

   def back
      input = gets.strip.downcase
         if input == "back"
         puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
         puts "\nThese are the 50 players who defined the game of basketball as we know it. Pick a legend to learn more.\n"
         Player.list_players
         self.choose_player
         else
         puts "I'm sorry, I don't understand that command."
         welcome
      end
   end
   
end
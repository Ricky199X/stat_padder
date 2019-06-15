
# class CLI
#    def run
#       HomepageScraper.scrape_players
#       loop do 
#          user_input = welcome
#          if user_input == "exit"
#             puts "\n\nRemember, basketball head, ball is life.\n\n"
#             return
#          else
#             self.list_players
#             self.choose_player
#          end
#       end
#    end

#    def welcome
#       puts "\nHello, basketball head! To get started, enter 'start'.\n"
#          user_input = gets.strip.downcase
#       return user_input
#    end

#    # def menu
#    #    puts "These are the 50 players who defined the game of basketball as we know it"
#    # end

#    def list_players
#       puts "\nPick a player you would like to learn more about:"
#       Player.list_players
#    end

#    def choose_player
#       index = gets.strip.to_i - 1
#       player = Player.all[index]
#       HomepageScraper.scrape_bio(player)
#       self.display_player_info(player)
#       puts "For more information on this player, hit 'Y'"
#       input = gets.strip.downcase
#          if input != "y"
#             puts "I'm sorry, please enter a valid input."
#          else
#             puts "\n"
#             self.display_player_bio(player)
#          end
#    end

   

#    def display_player_info(player)
#       puts "\n\n"
#       puts "You picked #{player.name}."
#       puts "\n\n"
#       puts player.des
#       puts "\n\n"
#       return
#    end

#    def display_player_bio(player)
#       puts player.bio
#       puts "\n\n\n"
#       puts "To go back to the main menu, enter 'back' "
#       self.back
#    end

#    def back
#       input = gets.strip.downcase
#          if input == "back"
#          self.list_players
#          else
#          puts "I'm sorry, I don't understand that command."
#       end
#    end

# end

# refactor CLI

# chain of command:

class CLI
   def run
   # Scrapes the data, loads everything up 
   HomepageScraper.scrape_players
   # it runs the program - has several methods in it, that all execute in succession
   self.welcome #-> welcome the user, accepts an input to get to the next level of the menu
      #if input == "start" -> self.list_players
      #else -> puts "I'm sorry, I thought you wanted to learn something today!"
   # self.choose_player
   # self.display_player_bio
   end

def welcome
   puts " "
   puts "\nHello, basketball head! To get started, enter 'start'.\n"
   user_input = gets.strip.downcase

   if user_input == "start"
      puts "\nThese are the 50 players who defined the game of basketball as we know it\n"
      Player.list_players
   else
      puts "I'm sorry, I thought you wanted to learn something today!"
   end

end

   
end
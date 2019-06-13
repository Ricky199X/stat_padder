
class CLI
   def run
      HomepageScraper.scrape_players
      loop do 
         user_input = welcome
         if user_input == "exit"
            puts "\n\nRemember, basketball head, ball is life.\n\n"
            return
         else
            self.list_players
            self.choose_player
         end
      end
   end
#       welcome # user hits start, calls Category.list_all, receives the menu of categories back
#       menu # User has a menu + a prompt to enter number or category name # calls on Players.find_by_category
#             # to return a list of players in that category 

#       player_menu # User has a list of players in a specific category, is prompted to select a player based 
#                # on number or player name
#       # more_info # User enters a player name, is returned biological info on that player
#       # goodbye # Returns a goodbye message and closes the program 
#    end


   def welcome
      puts "\nHello, basketball head! To get started, enter 'start'.\n"
      user_input = gets.strip.downcase
      return user_input
   end

   # def menu
   #    puts "These are the 50 players who defined the game of basketball as we know it"
   # end

   def list_players
      puts "\n Pick a player you would like to learn more about:"
      # Category.all -> returns list of 50 Greatest NBA Players
      Player.all.each_with_index do |player, i|
         puts "   \n#{i + 1}. #{player.name} \n "
      end
   end

   def choose_player
      index = gets.strip.to_i - 1
      player = Player.all[index]
      HomepageScraper.scrape_bio(player)
      self.display_player_info(player)
   end

   def display_player_info(player)
      puts "\n\n\n"
      puts player.name
      puts "\n\n\n"
      puts player.des
      puts "\n\n\n"
      puts player.bio
      puts "\n\n\n"
   end
#    def menu
#       puts "\nEnter the number or the name of the category for more information or exit to leave."
#       category_input = nil
#       while category_input != "exit" do
#          category_input = gets.strip.downcase

#          if category_input == "1" || category_input == "points"
#             puts <<-DOC
#             1. James Harden
#             2. paul george
#             3. Giannis
#             4. Joel embiid
#             5. lebron james
#          DOC
#             break

#          elsif category_input == "2" || category_input == "rebounds"
#             puts <<-DOC
#             1. Andre Drummond
#             2. Joel embiid
#             3. Deandre Jordan
#             4. Rudy Gobert
#             5. Clint Capela
#          DOC
#             break

#             puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"

#          elsif category_input == "3" || category_input == "assists"
#             puts <<-DOC
#             1. Russell westbrook
#             2. john wall
#             3. kyle lowry
#             4. lebron james
#             5. jeff teague
#             DOC
#             break

#             puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"

#          elsif category_input == "4" || category_input == "blocks"
#             puts <<-DOC
#             1. myles turner
#             2. mitchell robinson
#             3. anthony davis
#             4. rudy gobert
#             5. brook lopez
#          DOC
#             break
#          elsif category_input == "5" || category_input == "steals"
#             puts <<-DOC
#             1. paul george
#             2. robert covington
#             3. james harden
#             4. chris paul
#             5. russell westbrook
#          DOC
#             break

#          elsif category_input == "6" || category_input == "minutes"
#             puts <<-DOC
#             1. bradley beal
#             2. paul george
#             3. james harden
#             4. russell westbrook
#             5. jrue holiday
#          DOC

#             puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"

#          elsif category_input == "exit"
#             goodbye

#          elsif category_input == "back"
#             puts <<-DOC
#             \n
#             1. Points
#             2. Rebounds
#             3. Assists
#             4. Blocks
#             5. Steals
#             6. Minutes
#             DOC
#             puts "\nSelect a category:"

#          else
#             puts <<-DOC
#                \n
#             1. Points
#             2. Rebounds
#             3. Assists
#             4. Blocks
#             5. Steals
#             6. Minutes
#             DOC
#             puts "\nEnter the number of the category for more information or exit to leave." 
#          end
#       end
#    end

#    def player_menu
#       # displays current category's players
#       puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"
#       player_input = nil
#       while player_input != "exit" do
#          player_input = gets.strip.downcase

#          if player_input == "player name"
#             puts <<-DOC
#             \n
#             Player Name: Name
#             Player Position: Position
#             Current Team: "Team
#             Birth Place: Birth Place
#             Nationality: Nationality
#             Height: Height
#             Weight: Weight
#             Hand: 
#             Current NBA Status:
#             Current Agent: 
#             Draft Entry:
#             Early Entry Info:
#             Drafted: 
#             Pre-Draft Team:
#             High School:
#          DOC

#          elsif player_input == "back"
#             puts <<-DOC
#             \n
#             1. current player 1
#             2. current player 2
#             3. current player 3
#          DOC
#             puts "\nSelect a player:"

#          elsif player_input == "exit"
#             goodbye

#          else
#             puts <<-DOC
#             \n
#             [current players in category]
#             DOC
#             puts "\nFor info on a player in this category, enter the player's name or enter 'back' to go back to the main menu\n"
#          end
#       end
#    end


#    def goodbye
#       puts "\nRemember, basketball head: ball is life."
#    end


end
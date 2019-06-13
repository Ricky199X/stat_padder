
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

   def welcome
      puts "\nHello, basketball head! To get started, enter 'start'.\n"
      user_input = gets.strip.downcase
      return user_input
   end

   # def menu
   #    puts "These are the 50 players who defined the game of basketball as we know it"
   # end

   def list_players
      puts "\nPick a player you would like to learn more about:"
      # Category.all -> returns list of 50 Greatest NBA Players
      Player.all.each_with_index do |player, i|
         puts " \n#{i + 1}. #{player.name} \n "
      end
   end

   def choose_player
      index = gets.strip.to_i - 1
      player = Player.all[index]
      HomepageScraper.scrape_bio(player)
      self.display_player_info(player)
      puts "For more information on this player, hit 'Y'"
      input = gets.strip
      puts "\n"
      self.display_player_bio(player)
   end

   # def more_information
      
   #    input = gets.strip
   #    self.display_player_bio
   # end

   def display_player_info(player)
      puts "\n\n"
      puts "You picked #{player.name}."
      puts "\n\n"
      puts player.des
      puts "\n\n"
      return
   end

   def display_player_bio(player)
      puts player.bio
      puts "\n\n\n"
   end


end
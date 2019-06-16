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
               if user_input == nil
                  return
               else
               choose_player(user_input)
               
               puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
               puts "\n"
               puts "To look at another player, enter a number from 1 - 50 or enter 'exit' to leave."
               puts "\n"
               puts "1. Kareem Abdul-Jabbar   11. Dave Cowens        21. Elvin Hayes     31. Earl Monroe       41. Dolph Schayes"
               puts "2. Nate Archibald        12. Billy Cunningham   22. Magic Johnson   32. Hakeem Olajuwon   42. Bill Sharman"
               puts "3. Paul Arizin           13. Dave DeBusschere   23. Sam Jones       33. Shaquille O'Neal  43. John Stockton"
               puts "4. Charles Barkley       14. Clyde Drexler      24. Michael Jordan  34. Robert Parish     44. Isiah Thomas"
               puts "5. Rick Barry            15. Julius Erving      25. Jerry Lucas     35. Bob Pettit        45. Nate Thurmond"
               puts "6. Elgin Baylor          16. Patrick Ewing      26. Karl Malone     36. Scottie Pippen    46. Wes Unseld"
               puts "7. Dave Bing             17. Walt Frazier       27. Moses Malone    37. Willis Reed       47. Bill Walton"
               puts "8. Larry Bird            18. George Gervin      28. Pete Maravich   38. Oscar Robertson   48. Jerry West"
               puts "9. Wilt Chamberlain      19. Hal Greer          29. Kevin McHale    39. David Robinson    49. Lenny Wilkens"
               puts "10. Bob Cousy            20. John Havlicek      30. George Mikan    40. Bill Russell      50. James Worthy"
               end

            when user_input.to_i > 0
               choose_player(user_input)
               
            when user_input == "exit"
               puts "\n\nRemember, basketball head, ball is life.\n\n"
            else 
               puts "\nYou seem confused, bruh! How's a fresh start sound? Enter 'start' to go back to the main menu or hit 'Exit' to leave!."
         end
      end   
   end


   def choose_player(index)
      player = Player.all[index.to_i - 1]

      HomepageScraper.scrape_bio(player)
      puts " "
      puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
      puts " "
      puts "You picked #{player.name}."
      puts " "
      puts player.des
      puts " "
      puts "Would you like to learn more about #{player.name}? Enter 'Y' for more info or 'back' to see the menu."
      puts "\n<<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>><<<<>>>>\n"
         input = gets.strip.downcase
            if input == "y"
               puts " "
               puts player.bio
            elsif input == "back"
               return
            else
               return
            end
      puts "\n"
      puts "\n"    
   end
      

   def print_players(from_input)
      puts ""
      puts "---------- NBA Legends #{from_input} - #{from_input+9} ----------"
      puts ""
      Player.all[from_input-1, 10].each.with_index(from_input) do |player, index|
         if index == 33
            puts "#{index}. Shaquille O'Neal"
         else
            puts "#{index}. #{player.name}"
         end
      end  
   end 
   
end

   


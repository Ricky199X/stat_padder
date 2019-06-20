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

         puts "\nPick a player by number: "

         player_input = gets.strip.to_i
         player = Player.find(player_input)
         HomepageScraper.scrape_bio(player)

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
                  puts "Remember, basketball head...ball is life."
                  return
               end
         puts "\n"
         puts "\n" 
               
         puts "Would you like to see more players?"
            input = gets.strip.downcase
               if input == "y" || input == "yes"
                  welcome
               else
                  puts ""
                  puts "Remember, basketball head...ball is life."
                  return
               end
            
   end


   
end


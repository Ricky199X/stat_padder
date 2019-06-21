class Player
   attr_accessor :name, :url, :des, :bio

   @@all = []

   def initialize(name = nil, url = nil, des = nil, bio = nil)
      @name = name
      @url = url
      @des = des
      @bio = bio
      @@all << self
   end

  
   def self.all
      @@all
   end

   def self.length
      @@all.length
   end

   def self.list_players
      self.all.each.with_index do |player, index|
         if index == 32
            puts "#{index + 1}. Shaquille O'Neal"
         else
            puts "#{index + 1}. #{player.name}"
         end
      end  
   end 

   # puts "1. Kareem Abdul-Jabbar   11. Dave Cowens        21. Elvin Hayes     31. Earl Monroe       41. Dolph Schayes"
   # puts "2. Nate Archibald        12. Billy Cunningham   22. Magic Johnson   32. Hakeem Olajuwon   42. Bill Sharman"
   # puts "3. Paul Arizin           13. Dave DeBusschere   23. Sam Jones       33. Shaquille O'Neal  43. John Stockton"
   # puts "4. Charles Barkley       14. Clyde Drexler      24. Michael Jordan  34. Robert Parish     44. Isiah Thomas"
   # puts "5. Rick Barry            15. Julius Erving      25. Jerry Lucas     35. Bob Pettit        45. Nate Thurmond"
   # puts "6. Elgin Baylor          16. Patrick Ewing      26. Karl Malone     36. Scottie Pippen    46. Wes Unseld"
   # puts "7. Dave Bing             17. Walt Frazier       27. Moses Malone    37. Willis Reed       47. Bill Walton"
   # puts "8. Larry Bird            18. George Gervin      28. Pete Maravich   38. Oscar Robertson   48. Jerry West"
   # puts "9. Wilt Chamberlain      19. Hal Greer          29. Kevin McHale    39. David Robinson    49. Lenny Wilkens"
   # puts "10. Bob Cousy            20. John Havlicek      30. George Mikan    40. Bill Russell      50. James Worthy"


   def self.find(index)
      self.all[index - 1]
   end

end
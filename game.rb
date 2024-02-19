class Game
    def initialize
      @total_points = 0
      @rooms = { "Room 1" => 5, "Room 2" => 10, "Room 3" => 15 }
    end
  
    def display_menu
      puts "Choose a room to enter:"
      @rooms.each_with_index do |(room), index|
        puts "#{index + 1}. #{room}"
      end
      puts "#{@rooms.size + 1}. Exit"
    end
  
    def play
      loop do
        display_menu
        choice = user_choice
        break if choice == @rooms.size + 1
  
        room_name, points = @rooms.to_a[choice - 1]
        enter_room(room_name, points)
      end
  
      puts "Game over. Total points collected: #{@total_points}"
    end
  
    private
  
    def user_choice
      print "Enter your choice: "
      choice = gets.chomp.to_i
      unless (1..@rooms.size + 1).include?(choice)
        puts "Invalid choice. Please enter a valid room number or exit."
        choice = user_choice
      end
      choice
    end
  
    def enter_room(room_name, points)
      puts "Entering #{room_name}..."
      @total_points += points
      puts "You've earned #{points} points in #{room_name}. Total points: #{@total_points}\n\n"
    end
  end
  

  game = Game.new
  game.play
  
class Game
  attr_accessor :start, :print_score, :is_over
  alias :is_over? :is_over

  def initialize()
    @current_player = nil
  end

  def toggle_player
    @current_player = @current_player == @p1 ? @p2 : @p1
  end

  def start
    puts "Welcome to Math Game! Let's get started. \n\n"
    p "Enter Player 1's name"

    print "> "
    n1 = $stdin.gets.chomp
    @p1 = Player.new(n1)
    puts `clear`

    puts "\n\nEnter Player 2's name:"

    print "> "
    n2 = $stdin.gets.chomp
    @p2 = Player.new(n2)
    puts `clear`
    puts "\nOk #{@p1.name} and #{@p2.name}... Let's do some math!\n"
  end

  def print_score
    puts "\nThe current score is: #{@p1.name}: #{@p1.lives}/3 | #{@p2.name}: #{@p2.lives}/3 \n"
  end

  def is_over?
    @p1.lives === 0 || @p2.lives === 0
  end

  def play
    while !is_over?
      toggle_player
      puts "----------------------------------"
      print_score()
      q = Question.new

      # p q.question
      puts "\n#{@current_player.name}: #{q.question}?"

      print "> "
      player_input = $stdin.gets.chomp.to_i
      p player_input  

      puts `clear`

      # compare player_input to q.answer 
      if player_input != q.answer
       @current_player.fail
       puts "\n#{@current_player.name}: ❌ Oops... do better next time ❌"
       
      else
        puts "\n#{@current_player.name}: ✅ Yes! You are correct. ✅"
      end
      # print "> "
    end
  end

  def end_game
    if @p1.lives > 0 
      puts "\n✨#{@p1.name}✨ wins with a score of #{@p1.lives}/3"     
    else 
      puts "\n✨#{@p2.name}✨ wins with a score of #{@p2.lives}/3\n"
    end     
  end
end





# if answer != add()
#   playerOne - 1
  
#   if playerOne == 0 || playerTwo == 0
#     puts "Game over"
#     exit(0)
  
  
#     while playerOne.lives > 0 && playerTwo.lives > 0
#       "play1: #{add()}"
#       answer = $stdin.gets.chomp 
#       puts  "#{playerOne}/3" if asnwer != add()
#       "play2: #{add()}"
#       answer = $stdin.gets.chomp
#       puts  "#{playerTwo}/3" if asnwer != add()
#     end
  
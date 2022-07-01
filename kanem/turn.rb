require './question'

class Turn 

  attr_accessor :game, :current_player, :players
 
  def initialize(players, game)
    self.game = game
    self.players = players
  end 

  def play()
    puts '----- NEW TURN -----'
    
    question = Question.new()
    puts question.question
    puts question.answer
    currentPlayerAnswer = $stdin.gets.chomp

    if currentPlayerAnswer == question.answer
      self.game.switch_player()
      puts "> #{currentPlayerAnswer}"
      puts "#{self.players[self.game.currentPlayer].name}: YES! You are correct."
      
      scores = []
      self.players.each do |player|
        scores.push("#{player.name}: #{player.lives}/3")
      end
      score = scores.join(" vs ")
      puts score
    else 
      self.players[game.current_player].deduct_life()
    end 

    # if self.players.select { |player| player.lives <= 0 }
    #   winner = self.players.select { |player| player.lives > 0 }
    #   puts winner
    #   self.game.end_game(0)
    #   puts "Player #{self.game.current_player +1} wins with a score of #{self.players[game.current_player].lives?}/3"
    #   puts '---- GAME OVER -----'
    #   puts 'Good bye!'
    # end
  end

  def begin()
    while game.is_over != true
      self.play()
    end
  end

  def end_turn()
    @current_player = @current_player == 0 ? 1 : 0 
  end



end
    

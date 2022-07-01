class Game
    attr_accessor :current_player, :winner, :is_over 
    
    def initialize()
      self.current_player = 0
      self.winner = nil
      self.is_over = false  
    end
  
    def switch_player(newplayer)
      self.current_player = newplayer
    end
  
    def start_game()
      self.current_player = 0
      self.winner = nil
      self.is_over = false  
    end
  
    def end_game(winner)
      self.is_over = true
      self.winner = winner
    end
  end
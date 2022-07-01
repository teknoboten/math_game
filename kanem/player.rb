class Player
    attr_accessor :lives, :name
    
    def initialize(name)
      self.lives = 3
      self.name = name
    end
  
    def deduct_life()
      self.lives = self.lives - 1
    end
  end
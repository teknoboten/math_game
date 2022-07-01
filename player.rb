class Player
  attr_accessor :name, :lives, :fail

  def initialize(name)
    @name = name      
    @lives = 3   
  end

  def fail
    @lives -= 1
  end
  
end

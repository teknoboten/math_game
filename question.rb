class Question
  attr_accessor :answer, :question  #things here are returned

  def initialize()
    @random_number = rand(1..20)
    @one = rand(1..20)
    @two = rand(1..20)
    @answer = @one + @two
    @question = "what is #{@one} plus #{@two}??"
  end
  
end
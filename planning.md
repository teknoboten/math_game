# nouns
- player
- game
- turn
- question



# roles / classes
**player**
track the user's name and how many lives the user has left

init: name 
state: name, lives_left (default value 3)
methods: 



**game**
starts / ends the game
tracks the current score, current_player, winner, is_over?

<!-- init: is_over? == false -->
state:
behavior:


**turn**
game loop - continues until a player's lives == 0


gets / sets current question
prints question to terminal
handles player input / compares to correct answer
updates current_player score

state:
behavior:


**question**
generate / return new question object 
(2 integers and their sum)
question (string)

state:
behavior:

















**player**


initialize: (name)



**game**


*state*
is_over?
current_player
winner: null

*methods:*
start_game
next_turn
next_question

  *start_game*
  player_1 = Player.new('name')
  player_2 = Player.new('name')
  current_player = player1

  while !is_over, call next_turn

  *next_turn* (game loop)
  call get_question
  print current question to terminal
  handle player_input 
    -> compare player_input to correct answer
    -> if player_input != question.correct_response
        currentplayer.subtract_life

    - toggle current_player & call next_turn unless 
    
    if current_player.lives == 0
      winner == current_player
      is_over == true  









**question**
initialize: 
state: 2 random numbers, correct_response
behavior: generate / return new question object









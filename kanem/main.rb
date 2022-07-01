require './question'
require './player'
require './turn'
require './game'

question = Question.new()

puts question.question
puts question.answer

players = []
players.push(Player.new('playerOne'))
players.push(Player.new('playerTwo'))

game = Game.new()

turn = Turn.new(players, game)

turn.begin()
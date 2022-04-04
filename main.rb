=begin

Player {
  keeps track of life points

  initialize name

  attr_accessor life points
  attr_reader name



}

Question {
  keeps track of questions

  attr_accessor questions

  give_random_question
}

Game {
  keeps track of game state
  runs game

  initialize players, questions, current player


  new_turn:
    switch player
    ask a question
    penalize or pass


}


=end
questions = {
  '5 * 3 + 1': 16,
  '12 / 2 * 3': 18,
  '1 + (3 / 3)': 2
}

require "./Player"
require "./Questions"
require "./Game"

questionBank = Questions.new(questions)

print "Enter player 1's name: "
player1Name = gets.chomp 
puts "Welcome #{player1Name}"


print "Enter player 2's name: "
player2Name = gets.chomp 
puts "Welcome #{player2Name}"

player1 = Player.new(player1Name)
player2 = Player.new(player2Name)

game = Game.new([player1, player2], questionBank, player1)


game.run




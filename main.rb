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

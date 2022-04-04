class Game 


  def initialize players, questionBank, currentPlayer
    @players = players
    @questionBank = questionBank
    @currentPlayer = currentPlayer
  end


  def new_turn
    puts "----- NEW TURN -----"
    # ask a question
    newQuestion = @questionBank.give_random_question
    puts "#{@currentPlayer.name}: What is #{newQuestion.keys[0]}"
    answer = gets.chomp 

    puts "you put #{answer}, the correct answer is #{newQuestion.values[0]}"

    # penalize or pass
    if answer != newQuestion.values[0].to_s
      puts "You are incorrect!"
      @currentPlayer.penalize

    else 
      puts "You are correct"
    end 

    #show state

    puts "#{@players[0].name}: #{@players[0].lifePoints}/3 vs. #{@players[1].name}: #{@players[1].lifePoints}/3"


    # switch player
    switch_player()


  end

  
  def switch_player
    newCurrentPlayer = @players.filter {|player| player.name != @currentPlayer.name}
    @currentPlayer = newCurrentPlayer[0]

  end

  def run
    while (@players[0].lifePoints != 0 && @players[1].lifePoints != 0)
      self.new_turn
    end

    if @players[0].lifePoints != 0
      winner = @players[0].name
    else
      winner = @players[1].name
    
      puts "----- GAME OVER -----"
      
      puts "The winner is #{winner}!"
    
    end
  end


end

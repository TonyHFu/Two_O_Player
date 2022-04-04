class Player 

  attr_accessor :lifePoints
  attr_reader :name
  
  def initialize name
    @name = name
    @lifePoints = 3
  end

  def penalize
    self.lifePoints -= 1
  end
  

end


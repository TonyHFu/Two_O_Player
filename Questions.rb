class Questions 

  def initialize questions
    @questions = questions
  end

  def give_random_question
    n = rand(@questions.count)
    random_hash = [@questions.find.with_index {|_h, i | i ==n}]
    random_hash.to_h
  end

end

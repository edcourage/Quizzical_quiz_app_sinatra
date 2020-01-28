class Game
  def initialize(question = Question)
    @question = question
  end

  def new_question
    @question.random_question
  end
end

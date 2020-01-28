class Game
  def initialize(question = Question)
    @question = question
    @questionTracker = []
  end

  def new_question
    question = @question.random_question
    if @questionTracker.include?(question)
      if @questionTracker.length == @question.all.length
        while @questionTracker.include?(question) do
          question = @question.random_question
        end
      else
        return nil
      end
    end
    @questionTracker << question
    question
  end
end

class Game
  attr_accessor :question_number
  def initialize(question = Question)

    @question = question
    @questionTracker = []
    @question_number = 1
  end

  def self.create
    @game = self.new
  end

  def self.instance
    @game
  end

  def self.reset
    @game = nil
  end

  def new_question
    question = @question.random_question
    if @questionTracker.include?(question)
      if @questionTracker.count != @question.all.count
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

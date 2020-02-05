class Game
  attr_accessor :question_number, :lives_remaining, :passes_remaining
  def initialize(question = Question)

    @question = question
    @questionTracker = []
    @question_number = 1
    @lives_remaining = 3
    @passes_remaining = 2
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

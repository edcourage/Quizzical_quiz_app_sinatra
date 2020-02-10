class Game
  attr_accessor :question_number, :lives_remaining, :passes_remaining
  @game_id = 1
  @game = {}
  def initialize(question = Question)

    @question = question
    @questionTracker = []
    @question_number = 1
    @lives_remaining = 3
    @passes_remaining = 2
  end

  def self.game_id
    @game_id
  end

  def self.create(game_id)
    @game[game_id.to_s] = self.new
    @game_id += 1
  end

  def self.instance(game_id)
    @game[game_id.to_s]
  end

  def self.remove_instance(game_id)
    @game.delete(game_id.to_s)
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

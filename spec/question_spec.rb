require 'question'

describe Question do
  context '#random_question' do
    #needs updating
    it 'returns a random_question' do
      add_single_question_to_table
      srand(100)
      expect(Question.random_question).to eq Question.first
    end
  end
end

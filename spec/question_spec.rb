require 'question'

describe Question do
  context '#random_question' do

    it 'returns a random_question' do
      populate_questions_table
      srand(100)
      expect(Question.random_question).to eq Question.first(id:10)
    end
  end
end

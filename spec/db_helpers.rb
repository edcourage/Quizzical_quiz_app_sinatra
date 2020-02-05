def add_single_question_to_table
  question = ["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]]
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'general_knowledge'
    )

end

def add_second_single_question_to_table
  question = ["What is an axolotl?","A species of salamander",["A nerve in the brain","A multi-axled vehicle","A type of mortice lock","A species of salamander"]]
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'general_knowledge'
    )

end

def add_third_single_question_to_table
  question = ["Who revolutionised high jumping when he used his flop technique to win an Olympic gold medal in Mexico in 1968?","Dick Fosbury",["Dick Fosbury", "Mick Cadbury","Nick Fosdyke","Vic Foster"]]
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'general_knowledge'
    )
end


def add_two_questions_to_table
  questions = [["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]],
    ["What is an axolotl?","A species of salamander",["A nerve in the brain","A multi-axled vehicle","A type of mortice lock","A species of salamander"]]]
  questions.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'general_knowledge'
    )
  end

end

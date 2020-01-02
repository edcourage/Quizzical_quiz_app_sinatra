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

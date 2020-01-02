
require './db/data_mapper_setup'
require_relative '../resources/questions.rb'

  @general_knowledge.each do |question|
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

  @geography.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'geography'
    )
  end

  @sport.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'sport'
    )
  end

  @food.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'food'
    )
  end

  @british_history.each do |question|
    Question.create(
      question: question[0],
      answer_1: question[2][0],
      answer_2: question[2][1],
      answer_3: question[2][2],
      answer_4: question[2][3],
      correct_answer: question[1],
      category: 'british_history'
    )
  end

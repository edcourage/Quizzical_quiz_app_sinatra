feature "questions" do
  scenario "can see the question title" do
    add_single_question_to_table
    visit '/'
    click_button "Start"
    expect(page).to have_css("#question", text: "The Plaka is the oldest quarter of which city?")
  end

  scenario "I can see the 4 possible answers as buttons" do
    add_single_question_to_table
    visit '/'
    click_button "Start"
    expect(page).to have_css(".possibleAnswers", text: "Athens")
    expect(page).to have_css(".possibleAnswers", text: "Prague")
    expect(page).to have_css(".possibleAnswers", text: "Rome")
    expect(page).to have_css(".possibleAnswers", text: "Vienna")
  end

  scenario "If I select the correct answers I am notified" do
    add_single_question_to_table
    visit '/'
    click_button "Start"
    click_button "Athens"
    expect(page).to have_css("#answerOutcome", text: "Correct!")
  end

  scenario "You're notified that its the first question" do
    add_single_question_to_table
    visit '/'
    click_button "Start"
    expect(page).to have_css("#questionNumber", text: "Question 1 of 10")
  end

  # scenario "You're notified that its the first question" do
  #   srand(2)
  #   add_two_questions_to_table
  #   visit '/'
  #   click_button "Start"
  #   click_button "Athens"
  #   expect(page).to have_css("#questionNumber", text: "Question 2 of 10")
  # end

  scenario "notify if there are no more questions" do
    add_single_question_to_table
    visit '/'
    click_button "Start"
    click_button "Athens"
    expect(page).to have_text("You've run out of questions... come on, you think I've got all day to think of new questions. Play something else!")
  end

end

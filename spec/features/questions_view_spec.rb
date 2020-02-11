feature "questions" do
  context "#question and possible answers" do
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
  end

  # scenario "If I select the correct answers I am notified" do
  #   add_single_question_to_table
  #   visit '/'
  #   click_button "Start"
  #   click_button "Athens"
  #   expect(page).to have_css("#answerOutcome", text: "Correct!")
  # end

  context "#question number" do
    scenario "You're notified that its the first question" do
      add_single_question_to_table
      visit '/'
      click_button "Start"
      expect(page).to have_css("#questionNumber", text: "Question 1 of 10")
    end

    # scenario "when you answer correct the question number increases" do
    #   add_single_question_to_table
    #   visit '/'
    #   click_button "Start"
    #   add_second_single_question_to_table
    #   click_button "Athens"
    #   click_button "A species of salamander"
    #   expect(page).to have_css("#questionNumber", text: "Question 3 of 10")
    # end
    #
    # scenario "when your answer incorrect the question number resets to 1" do
    #   add_single_question_to_table
    #   visit '/'
    #   click_button "Start"
    #   add_second_single_question_to_table
    #   click_button "Athens"
    #   expect(page).to have_css("#questionNumber", text: "Question 2 of 10")
    #   click_button "A nerve in the brain"
    #   expect(page).to have_css("#questionNumber", text: "Question 1 of 10")
    # end
    #
    #
    #   scenario "when you get answer 10 question correctly you complete the game" do
    #     add_single_question_to_table
    #     visit '/'
    #     click_button "Start"
    #     game_id = Game.game_id - 1
    #     Game.instance(game_id).question_number = 10
    #     click_button "Athens"
    #     expect(page).to have_css("#youWin", text: "You Win!")
    #   end

  end



  # scenario "notify if there are no more questions" do
  #   add_single_question_to_table
  #   visit '/'
  #   click_button "Start"
  #   click_button "Athens"
  #   expect(page).to have_text("You've run out of questions... come on, you think I've got all day to think of new questions. Play something else!")
  # end

  context "#lives" do
    scenario "i can see remaining lives" do
      add_single_question_to_table
      visit '/'
      click_button "Start"
      expect(page).to have_css("#livesRemaining", text: "Lives Remaining: 3")
    end

    # scenario "If i get a question wrong I lose a life" do
    #   add_single_question_to_table
    #   visit '/'
    #   click_button "Start"
    #   click_button "Prague"
    #   expect(page).to have_css("#livesRemaining", text: "Lives Remaining: 2")
    # end
    #
    # scenario "If i get a question wrong I lose a life" do
    #   add_single_question_to_table
    #   visit '/'
    #   click_button "Start"
    #   game_id = Game.game_id - 1
    #   Game.instance(game_id).lives_remaining = 1
    #   click_button "Prague"
    #   expect(page).to have_css("#gameOver", text: "Game Over!")
    # end
  end

  context "#passes" do
    scenario "I can see remaining passes" do
      add_single_question_to_table
      visit '/'
      click_button "Start"
      expect(page).to have_css("#passesRemaining", text: "Passes Remaining: 2")
    end
    # scenario "If I select pass, passes remaining amount will decrease" do
    #   add_single_question_to_table
    #   visit '/'
    #   click_button "Start"
    #   add_second_single_question_to_table
    #   click_button "Athens"
    #   click_button "Pass"
    #   expect(page).to have_css("#passesRemaining", text: "Passes Remaining: 1")
    # end
    #
    # scenario "If I select pass, I will get a new question but the question number will stay the same" do
    #   add_single_question_to_table
    #   visit '/'
    #   click_button "Start"
    #   add_second_single_question_to_table
    #   click_button "Athens"
    #   click_button "Pass"
    #   expect(page).to have_css("#questionNumber", text: "Question 2 of 10")
    # end
    #
    # scenario "Pass button with not be available once all passes are used up" do
    #   add_single_question_to_table
    #   visit '/'
    #   click_button "Start"
    #   add_second_single_question_to_table
    #   click_button "Pass"
    #   add_third_single_question_to_table
    #   click_button "Pass"
    #   expect(page).to_not have_css("#passButton")
    # end

  end


end

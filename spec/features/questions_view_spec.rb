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
end

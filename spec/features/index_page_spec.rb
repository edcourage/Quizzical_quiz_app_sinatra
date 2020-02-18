feature 'Index page' do
  scenario 'Expect page to have Quizzical' do
    visit '/'
    expect(page).to have_css("#title", text: "Quizzical")
  end

  scenario 'Expect page to have a how to Start button' do
    visit '/'
    expect(page).to have_button("Start")
  end

  scenario 'Expect page to have a How To Play button' do
    visit '/'
    expect(page).to have_button("How To Play")
  end

  scenario 'Expect page to diplay instuction after how to play is pressed' do
    Capybara.current_driver = :selenium
    visit '/'

    click_button "How To Play"

    expect(page).to have_text "Each question has 4 choices... select the one you think is right!"

  end

end

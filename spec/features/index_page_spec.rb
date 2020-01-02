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

end

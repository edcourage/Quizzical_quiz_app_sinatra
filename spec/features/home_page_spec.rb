feature 'home page' do
  scenario 'expect page to have Quizzical' do
    visit '/'
    expect(page).to have_css("#title", text: "Quizzical")
  end
end

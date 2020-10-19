feature 'Simple index page' do
  scenario "When going to index, see the text 'This is a bookmark manager." do
    visit '/'
    expect(page).to have_content 'This is a bookmark manager.'
  end
end

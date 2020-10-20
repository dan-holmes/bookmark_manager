feature "see a list of bookmarks" do
  scenario "when we visit the bookmarks route" do
    visit("/bookmarks")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://google.com")
    expect(page).to have_content("http://destoryallsoftware.com")
  end
end

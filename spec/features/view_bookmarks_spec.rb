feature "see a list of bookmarks" do
  scenario "when we visit the bookmarks route" do
  visit('/bookmarks')
  expect(page).to have_content("[Facebook, facebook.com][Google, google.com]")
  end
end
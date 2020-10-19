feature "see a list of bookmarks" do
  scenario "when we visit the bookmarks route" do
  visit('/bookmarks')
  Bookmark.add(Bookmark.new("Facebook", "facebook.com"))
  Bookmark.add(Bookmark.new("Google", "google.com"))
  expect(page).to have_content("[Facebook, facebook.com][Google, google.com]")
  end
end
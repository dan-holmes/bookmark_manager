require "./lib/bookmark.rb"

describe Bookmark do
  it "responds to the class method .all by return a list of bookmarks" do
    bookmarks = Bookmark.all
    expect(bookmarks).to include("google.com")
    expect(bookmarks).to include("facebook.com")
  end
end

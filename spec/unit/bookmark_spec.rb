require "./lib/bookmark.rb"

describe Bookmark do
  it "responds to the class method .all by return a list of bookmarks" do
    bookmarks = Bookmark.all
    expect(bookmarks[0]["url"]).to eq "http://www.makersacademy.com"
    expect(bookmarks[1]["url"]).to eq "http://www.google.com"
    expect(bookmarks[2]["url"]).to eq "http://www.destroyallsoftware.com"
  end
end

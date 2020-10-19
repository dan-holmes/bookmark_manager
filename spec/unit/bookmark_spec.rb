require "./lib/bookmark.rb"

describe Bookmark do
  it "responds to the class method .all by return a list of bookmarks" do
    expect(Bookmark.bookmarks).to eq [facebook, google]
  end
end

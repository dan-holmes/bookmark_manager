require './lib/bookmark.rb'

describe Bookmark do 

  let(:facebook) { Bookmark.new("Facebook", "facebook.com") }
  let(:google) { Bookmark.new("Google", "google.com") }

  it 'responds to the class method .all by return a list of bookmarks' do
    Bookmark.add(facebook)
    Bookmark.add(google)
    expect(Bookmark.bookmarks).to eq [facebook, google]
  end

end
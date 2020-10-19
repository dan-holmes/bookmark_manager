class Bookmark
  attr_reader :name, :url

  def self.bookmarks
    @bookmarks = { Facebook: "facebook.com", Google: "google.com" }
  end

  def initialize(name, url)
    @name = name
    @url = url
  end
end

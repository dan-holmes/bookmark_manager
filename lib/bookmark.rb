class Bookmark

  def self.add(bookmark)
    bookmarks.push(bookmark)
  end

  def self.bookmarks
    @bookmarks ||= []
  end

  def initialize(name, url)
    @name = name
    @url = url
  end

end
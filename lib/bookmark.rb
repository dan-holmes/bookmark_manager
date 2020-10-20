class Bookmark
  def self.all
    # ["facebook.com", "google.com"]
    con.exec "SELECT * FROM bookmarks"
  end
end

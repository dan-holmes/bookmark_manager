class Bookmark
  def self.all
    begin
      con = PG.connect :dbname => "bookmark_manager", :user => "TimGill"

      bookmarks = con.exec "SELECT * FROM bookmarks"
    rescue PG::Error => e
      puts e.message
    ensure
      con.close if con
    end
    bookmarks
  end
end

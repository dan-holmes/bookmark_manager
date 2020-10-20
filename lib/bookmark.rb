class Bookmark
  def self.all
    if ENV["RACK_ENV"] == "development"
      database = "bookmark_manager"
    elsif ENV["RACK_ENV"] == "test"
      database = "bookmark_manager_test"
    end
    begin
      con = PG.connect :dbname => database, :user => "dan"

      bookmarks = con.exec "SELECT * FROM bookmarks"
    rescue PG::Error => e
      puts e.message
    ensure
      con.close if con
    end
    bookmarks
  end
end

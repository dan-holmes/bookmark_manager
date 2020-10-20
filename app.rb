require "sinatra/base"
require "./lib/bookmark"
require "pg"

class BookmarkManager < Sinatra::Base

  begin
    con = PG.connect :dbname => 'bookmark_manager', :user => 'TimGill'
    puts con.server_version
    puts '1234'

  rescue PG::Error => e
    puts e.message

  ensure
    con.close if con

  end

  get "/" do
    "This is a bookmark manager."
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
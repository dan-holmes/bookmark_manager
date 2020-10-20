require "sinatra/base"
require "./lib/bookmark"
require "pg"

class BookmarkManager < Sinatra::Base
  get "/" do
    "This is a bookmark manager."
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end

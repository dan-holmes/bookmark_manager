require "sinatra/base"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  get "/" do
    "This is a bookmark manager."
  end

  get "/bookmarks" do
    Bookmark.bookmarks.each { |bookmark| @bookmark = [bookmark.name, bookmark.url] }
    erb :bookmarks
  end

  run! if app_file == $0
end

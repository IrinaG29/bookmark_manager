require 'sinatra/base'
require_relative './lib/bookmark'

class BookMarkManager < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    'Bookmark Manager'
    # erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    p params
    p "form submitted to the /bookmarks route"
    url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url}')")
    redirect '/bookmarks'
  end

  run! if app_file == $0
end

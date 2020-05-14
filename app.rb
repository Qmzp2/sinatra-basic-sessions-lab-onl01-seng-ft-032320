
require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret" #the string can be whatever you want, like a 'password' I guess? So not secret, haha.
  end

  get '/' do
    erb :index
  end

  post '/checkout' do #don't quit follow whats going on here
    @sessions = session
    params["item"]
    @sessions[:item] = item
  end
end
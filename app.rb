  require 'sinatra'
  set :session_secret, 'super secret'

  get '/' do
    "hello!!"
  end

  get '/secret' do
    "...can you guess? But why?"
  end

  get '/cat' do
    erb(:index)
  end

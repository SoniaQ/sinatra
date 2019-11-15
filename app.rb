  require 'sinatra'
  set :session_secret, 'super secret'

  get '/' do
    "hello!!"
  end

  get '/secret' do
    "...can you guess? But why?"
  end

  get '/random-cat' do
    @name = ["Slim Shady", "Popsicle", "Batman"].sample
    erb(:index)
  end

  get '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
  end

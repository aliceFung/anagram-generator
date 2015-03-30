require 'sinatra'
set :bind, '0.0.0.0'

get '/' do
    erb :index
end

get '/anagrams/:word' do
    @word = params[:word]
    erb :show
end

post '/' do
    
end
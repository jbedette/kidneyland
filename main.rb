require 'sinatra'
get '/home' do
    erb :home   
end
get '/package' do 
    erb :package
end
get '/team' do
    erb :team
end
get '/test' do
    erb :test
end
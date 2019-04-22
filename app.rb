require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions 
    set :session_secret, "abcdef"
  end
  
  get '/' do 
    erb :index
  end 
  
  post '/checkout' do 
    @sessions = sessions 
    params[:items]
  end 
end
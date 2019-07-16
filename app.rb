require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base
    set :show_exceptions => false
    
    get '/' do
        erb :user_input
    end
         
    post '/piglatinize' do
        @latinizer = PigLatinizer.new(params[:user_text])
        erb :results
    end


end
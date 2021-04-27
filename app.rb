require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base

    get '/' do        
        erb :user_input
    end

    post '/piglatinize' do
        a = PigLatinizer.new

         @translated_text = a.piglatinize(params[:user_phrase])

        erb :piglatinize
    end
end
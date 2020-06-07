require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post "/piglatinize" do
    phrase_from_user = params[:user_phrase]

    @piglatinized_string = PigLatinizer.new.piglatinize(phrase_from_user)

    erb :results
  end

end
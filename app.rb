require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    latinizer = PigLatinizer.new
    puts params
    @piglatin_text = latinizer.piglatinize(params[:user_phrase])

    erb :piglatinize
  end
end

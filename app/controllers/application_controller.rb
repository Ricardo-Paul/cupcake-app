require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/cupcakes" do
    @cupcakes = Cupcake.all
    erb :"cupcakes/index"
  end

end

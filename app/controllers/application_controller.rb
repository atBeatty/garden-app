require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions, true
    set :session_secret, ENV["SECRET"]
    register Sinatra::Flash
  end

  get "/" do
    erb :"index"
  end
  get '/about' do
    erb :"about"
  end
  

  helpers do
    def logged_in?
      session[:user_id]
    end

    def current_user
      @user ||= User.find_by(id: session[:user_id])
    end

    def redirect_if_not_logged_in
      if !logged_in?
        flash[:errors] = "Please login."
        redirect "/login"
      end
    end

    def redirect_if_logged_in
      if logged_in?
        redirect "/plants"
      end
    end

    def redirect_if_user_can_not_edit
      if @plant.user.id != current_user.id
        redirect '/plants'
      end
      
    end


  end
  
end



class UsersController < ApplicationController
    get '/users/:slug' do
        @user = User.find_by_slug(params[:slug])
        erb :"users/show"
    end

    get '/signup' do
        if logged_in?
            redirect "/plants"
        else
            erb :"users/signup"
        end
    end

    post '/signup' do
        user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
        if user && user.save
            session[:user_id] = user.id
            redirect "/plants"
        else

            redirect "/signup"
        end
    end

    get '/login' do
        if logged_in?
            redirect "/plants"
        else
            erb :"users/login"
        end
    end

    post '/login' do
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/plants"
        else
            flash[:notice] = "Wrong credentials."
            redirect "/signup"
        end
    end

    get '/logout' do
        if logged_in?
          session.clear
          redirect to '/'
        else
          redirect to '/'
        end
      end




end

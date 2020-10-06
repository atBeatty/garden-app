

class UsersController < ApplicationController
   
    get '/signup' do
        if logged_in?
            redirect "/plants"
        else
            erb :"users/signup"
        end
    end

    post '/signup' do
       @user = User.new(email: params[:email], password: params[:password])
       if @user && @user.save
        session[:user_id] = @user_id
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
        @user = User.find_by(email: params[:email])
        
        if @user && @user.authenticate(params[:password])
            puts @user.email
            session[:user_id] = @user.id
            redirect "/plants"
        else
            redirect "signup"
        end
    end






end

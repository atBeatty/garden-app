

class PlantsController < ApplicationController
    get '/plants' do 
        # binding.pry
        if logged_in?
            @plants = Plant.all
            erb :"plants/index"
        else
            redirect "/login"
        end
    end

    get '/plants/new' do
        if logged_in?
            erb :"plants/new"
        else
            redirect "/login"
        end
    end

    post '/plants' do
        if logged_in?
            @plant = Plant.create(params)
            redirect "/plants/#{@plant.id}"
        else
            redirect_if_not_logged_in
        end
    end

    get '/plants/:id' do
        if logged_in?
            @plant = Plant.find(params[:id])
            erb :"plants/show"
        else
            redirect "/login"
        end
    end

    get '/logout' do
        if logged_in?
          session.clear
          redirect to '/login'
        else
          redirect to '/'
        end
      end





end



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

    patch '/plants/:id/edit' do
        if logged_in?
            @plant = Plant.find(params[:id])
            if @tweet && @tweet.user == current_user
                erb :"plants/edit"
            else
                redirect "/plants"
            end
        else
            redirect "/login"
        end

    end


   





end

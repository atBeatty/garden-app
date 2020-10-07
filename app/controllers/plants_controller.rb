

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
            @users = User.all
            erb :"plants/new"
        else
            redirect "/login"
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

    post '/plants' do
        plant = Plant.create(params)
        if @plant.save 
            redirect "/plants/#{plant.id}"
        else
            redirect "/plants/new"
        end
    end

    get '/plants/:id/edit' do
        if logged_in?
            @users = User.all
            @plant = Plant.find_by_id(params[:id])
            if @plant.user.id == current_user.id
                erb :"plants/edit"
            else
                redirect "/plants"
            end
        else
            redirect "/login"
        end
    end

    patch '/plants/:id' do
        @plant = Plant.find(params[:id])
        # params.delete("_method")
        if @plant.update(params)
            redirect "/plants"
        else
            redirect "/plants"
        end
    end

    delete '/plants/:id/delete' do
        if logged_in?
            @plant = Plant.find_by_id(params[:id])
            if @plant && @plant.user == current_user
                @plant.delete
            end
            redirect to "/plants"
        else
            redirect to "/login"
        end
    end

end

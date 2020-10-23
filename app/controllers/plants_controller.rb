

class PlantsController < ApplicationController
    get '/plants' do 
        redirect_if_not_logged_in
        erb :"plants/index"
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
        #KEEPS STATELESS STATE BY USING local variable
        plant = Plant.create(params)
        if plant.save
            plant.update(user_id: current_user.id)
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
        @plant = Plant.find_by_id(params[:id])
        params.delete("_method")
        if @plant.user.id == current_user.id && @plant.update(params)
            redirect "/plants/#{@plant.id}"
        else
            redirect "/plants"
        end
    end

    delete '/plants/:id' do
        @plant = Plant.find_by_id(params[:id])
        redirect_if_user_can_not_edit
        if logged_in?
            @plant.delete
            redirect "/plants"
        end
    end

end

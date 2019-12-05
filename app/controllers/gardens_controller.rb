class GardensController < ApplicationController
    before_action :logged_in?
    before_action :find_garden, only: [:show, :edit, :update, :destroy]
    before_action :authorized, only: [:edit, :update, :destroy]
    helper_method :authorized

    def index
        @gardens = Garden.all
    end

    def new
        @garden = Garden.new
      
    end

    def create
        @garden = Garden.new(garden_params)
        @garden.user_id = current_user.id
        @garden.save
        redirect_to garden_path(@garden)
    end
    
    def show

    end

    def edit
        @plants = Plant.all
    end

    def update
       
        @garden.update(garden_params)
        redirect_to garden_path(@garden)
    end

    def destroy
        @garden.destroy
        redirect_to gardens_path
    end

    private

    def find_garden
        @garden = Garden.find(params[:id])
    end

    def garden_params
        params.require(:garden).permit(:name, :user_id)
    end

    def authorized
       logged_in? && @garden.user_id == current_user.id
    end 

    

end

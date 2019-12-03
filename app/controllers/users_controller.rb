class UsersController < ApplicationController
   
    before_action :set_user, only: [:show, :edit]
    before_action :user_params, only: [:create, :edit]
    
    def new
        @user = User.new
    end 

    def create 
        @user = User.create(user_params)
        if @user.valid?
            @user.save
            redirect_to @user
        else 
            flash[:error] = @user.errors.full_messages
            render :new
        end 
    end 

    def show
       
    end

    def edit
    end 

    private 
    
    def set_user
        @user = User.find(params[:id])
    end 

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :bio, :full_name)
    end 
end

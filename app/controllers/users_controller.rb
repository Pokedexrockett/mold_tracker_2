class UsersController < ApplicationController

    skip_before_action :redirect_if_not_logged_in, only: [:new, :create]

    def new
       @user = User.new 
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user_id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        redirect_if_not_logged_in
        @user = User.find_by_id(params[:id])
    end


    private
    def user_params
        params.require(:user).permit(:admin, :email, :password)
    end
end

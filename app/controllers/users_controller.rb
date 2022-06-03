class UsersController < ApplicationController

    def new
       @user = User.new 
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user_id
            redirect_to_user_path(@user)
        else
            render :new
        end
    end

    def show
        redirect_if_not logged_in
        @user = User.find_by_id(params[:id])
    end


    private
    def user_params
        params.require(:user).permit(:employee, :email, :password)
    end
end

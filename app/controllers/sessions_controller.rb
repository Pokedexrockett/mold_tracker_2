class SessionsController < ApplicationController

    def home

    end

    def new

    end

    def create
        user = User.find_by(employee: params[:user][:employee])
        if user.try(:authenticate, params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:error] = "Sorry, loging info was incorrect. Please try again."
            redirect_to login_path
        end
    end

    def destroy
        session.destroy
        redirect_to '/'
    end

end
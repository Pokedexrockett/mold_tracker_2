class SessionsController < ApplicationController

    skip_before_action :redirect_if_not_logged_in

    def home

    end

    def new

    end

    def create
        user = User.find_by(email: params[:user][:email])
        if user.try(:authenticate, params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:error] = "Sorry, login info was incorrect. Please try again."
            redirect_to login_path
        end
    end

    def destroy
        session.destroy
        redirect_to '/'
    end

end
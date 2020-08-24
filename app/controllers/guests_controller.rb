class GuestsController < ApplicationController

    def create
        user = User.find_by(email: 'guest@gmail.com')
        session[:user_id] = user.id
        flash[:success] = "ログインしました"
        redirect_to root_path
    end
end

class UsersController < ApplicationController

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:name, :password, :password_confirmation))
        if @user.save
            session[:user_id] = @user.id
            redirect_to @user
        else
            redirect_to new_user_path
        end
        
    end
        
        

end

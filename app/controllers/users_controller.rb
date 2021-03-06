class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path
        else
            render :new
        end
    end

    def edit
        @user = find_user
    end

    def update
        @user = find_user
        if @user.update(user_params)
            redirect_to root_path
        else
            render :edit
        end
    end

    private
        def user_params
            params.require(:user).permit(:username,:password,:email)
        end
        def find_user
            User.find(params[:id])
        end
end

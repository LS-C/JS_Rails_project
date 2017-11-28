class UsersController < ApplicationController

    def index
        @users = User.all
        @user = User.new

    end


    def show
        @user = User.find(params[:id])
        @item = Item.new
        id = @user.id
    end


    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name)
    end


end

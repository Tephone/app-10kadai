class User2sController < ApplicationController
    def new
        @user2 = User2.new
    end
    def create
        @user2 = User2.new(user2_params)
        if @user2.save
            #redirect_to user2_path(@user2.id)
            redirect_to new_session_path
        else
            render :new
        end
    end
    def show
        @user2 = User2.find(params[:id])
        #@blog = Blog.find(params[:id])
    end
    def edit
        @user2 = User2.find(params[:id])
    end
    def update
        @user2 = User2.find(params[:id])
        if @user2.update(user2_params)
            redirect_to user2_path(@user2.id)
        else
            render :edit
        end
    end
    private
    def user2_params
        params.require(:user2).permit(:name, :email, :image, :image_cache, :password, :password_confirmation)
    end
end

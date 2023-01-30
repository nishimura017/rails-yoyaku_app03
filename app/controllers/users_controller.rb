class UsersController < ApplicationController

 def index
  @users = User.all
 end

def new
  @user = User.new
end 

 def create
  @user = User.new(params.require(:user).permit(:username, :email, :profile, :profile_image))
  @user.save

 end
  def show
  @user = User.find(params[:id])

  end

  def edit
  end
  private
  def user_params
    params.require(:user).permit(:username, :email, :profile, :profile_image)
  end
end

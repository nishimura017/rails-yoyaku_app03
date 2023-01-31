class UsersController < ApplicationController
  
  def index
  end

  def new
    $user = User.new
  end 

 def create
  $user = User.new(params.require(:user).permit(:username, :email, :encrypted_password, :profile, :profile_image))
  $user.save

 end
  def show
  $user = User.find(params[:id])
  @user = current_user
 
  end

  def edit
    $user = User.find(params[:id])
    if $user != current_user
        redirect_to user_path(current_user), alert: "不正なアクセスです。"
    end
  end

  def Update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "ユーザー情報を更新しました。"
    else
      render :edit
    end
  end
  private
  def user_params
    params.require(:user).permit(:username, :email, :encrypted_password, :profile, :profile_image)
  end
end

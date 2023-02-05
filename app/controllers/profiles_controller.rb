class ProfilesController < ApplicationController
 
	
	def show
		$user = User.find(params[:id])
	end

	def edit
		$user = User.find(params[:id])
    if $user != current_user
        redirect_to user_path($user), alert: "不正なアクセスです。"
    end
	end

	def update
    if $user.update(user_params)

      redirect_to user_path($user), notice: "プロフィール情報を更新しました。"
    else
      render :edit
    end 
  end

	private
  def user_params
    params.require(:user).permit(:username, :email, :encrypted_password, :profile, :profile_image, )
  end
end

class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		@user = User.confirm(user_params)
		if @user
			login(@user)
			flash[:success] = "You've successfully logged in!"
			redirect_to creatures_path
		else
			flash[:error] = "Email or password is incorrect!"
			redirect_to login_path
		end
	end

	def destroy
		logout
		flash[:success] = "You've logged out"
		redirect_to creatures_path
	end




	private
		def user_params
			params.require(:user).permit(:email, :password)
		end
end

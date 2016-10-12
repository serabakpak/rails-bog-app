class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user = User.create(user_params)
		if user.save
			flash[:success] = 'User successfully created!'
			redirect_to creatures_path
		else
			flash[:error] = 'There has been an error!'
			render :new
		end
	end

	def show
		@user = User.find_by_id(params[:id])
	end


	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password)
		end
end

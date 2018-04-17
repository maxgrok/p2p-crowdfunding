class UsersController < ApplicationController
	def index
		@users = User.all 
	end

	def show
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(params[:amount])
		redirect_to user_path(@user)
	end

	def edit
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to root_path
	end

	def new
	end
end

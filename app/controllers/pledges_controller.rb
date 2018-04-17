class PledgesController < ApplicationController
	def index
		@pledges = Pledge.all
	end

	def show
		@pledge = Pledge.find(params[:id])
	end

	def update
		@pledge = Pledge.find(params[:id])
		@pledge.update(params[:amount])
		redirect_to pledge_path(@pledge)
	end

	def edit
		@pledge = Pledge.find(params[:id])
	end

	def destroy
		@pledge = Pledge.find(params[:id])
		@pledge.destroy
		redirect_to root_path
	end

	def new
	end
end

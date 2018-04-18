class PledgesController < ApplicationController
	def index
		@pledges = Pledge.all
	end

	def show
		@pledge = Pledge.find(params[:id])
	end

	def update
		@pledge = Pledge.find(params[:id])
		@pledge.update(pledge_params)
		redirect_to pledges_path(@pledge)
	end

	def create
		@pledge = Pledge.create(pledge_params)
		redirect_to pledges_path(@pledge)
	end

	def edit
		@pledge = Pledge.find(params[:id])
	end

	def destroy
		@pledge = Pledge.find(params[:id])
		@pledge.destroy
		redirect_to pledges_path
	end

	def new
		@pledge = Pledge.new
	end

	private 
	def pledge_params
		params.require(:pledge).permit(:amount, :project_id, :donor_id)
	end
end

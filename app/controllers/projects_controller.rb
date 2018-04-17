class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		@project.update(params[:amount])
		redirect_to project_path(@project)
	end

	def edit
	end

	def destroy
				@project = Project.find(params[:id])
		@project.destroy
		redirect_to root_path
	end

	def new
	end
end

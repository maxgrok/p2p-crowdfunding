class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		@project.update(project_params)
		redirect_to projects_path(@project)
	end

	def edit
		@project= Project.find(params[:id])
	end

	def create
		@project = Project.create(project_params)
		redirect_to projects_path(@project)
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end

	def new
		@project = Project.new
		@project.save
	end

	private 

	def project_params
		params.require(:project).permit(:title, :funding_goal, :category_id, :startdate, :enddate, :beneficiary_id)
	end
end

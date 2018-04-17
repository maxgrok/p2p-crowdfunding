class CategoriesController < ApplicationController
	def index
		@category = Category.all
	end

	def show
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		@category.update(params[:amount])
		redirect_to category_path(@category)
	end

	def edit
		@category = Category.find(params[:id])
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to root_path
	end

	def new
	end
end

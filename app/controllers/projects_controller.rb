class ProjectsController < ApplicationController

	def new
		@project = Project.new
	end
	
	def create
	  @project = Project.new(params[:project].permit(:name, :description))
	 
	  if @project.save
	  	redirect_to @project
	  else
	  	render 'new'
	  end
	end

	def show
		@project = Project.find(params[:id])
	end

	def index
		@projects = Project.all
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])

		if @project.update(params[:project].permit(:name, :description))
			redirect_to @project
		else
			render 'edit'
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		redirect_to projects_path
	end

end

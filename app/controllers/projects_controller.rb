class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
	end

	def show
		@project = Project.find_by(id: params[:id])
		unless @project
			render 'no_projects_found'
		end
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(
			:name => params[:project][:name],
			:description => params[:project][:description])
		@project.save

		redirect_to "/projects/#{@project.id}" #con comillas dobles interpreta el valor de la variable, con simples no
	end
end
class TimeEntriesController < ApplicationController
	def index
		@project = Project.find(params[:project_id])
		@entries = @project.time_entries.where('date > ?' , 1.month.ago.end_of_month)
	end
end

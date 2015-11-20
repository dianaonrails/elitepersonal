class ApplicationsController < ApplicationController

	def new
		@application = Application.new
	end	

	def create
		@application = Application.new(applications_params)
		@application.state = "Request"
	    respond_to do |format|
	      if @application.save
	        format.html { redirect_to vacancies_path, notice: '' }
	        format.json { render :show, status: :created, location: @application }
	      else
	        format.html { render :new }
	        format.json { render json: @application.errors, status: :unprocessable_entity }
	      end
	    end
	end	

	private
	def applications_params
		params.permit(:candidate_id,:application_id,:state)
	end
end
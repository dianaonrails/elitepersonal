class ApplicationsController < ApplicationController

	def new
		@application = Application.new
	end	

	def create
		@application = Application.new(application_params)
		@application.state = "Request"
	    respond_to do |format|
	      if @application.save
	        format.html { redirect_to new_application_path, notice: '' }
	        format.json { render :show, status: :created, location: @application }
	      else
	        format.html { render :new }
	        format.json { render json: @application.errors, status: :unprocessable_entity }
	      end
	    end
	end	

	private
	def application_params
		params.require(:application).permit(:candidate_id,:application_id,:state)
	end
end
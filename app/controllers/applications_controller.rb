# == Schema Information
#
# Table name: applications
#
#  id           :integer          not null, primary key
#  state        :string
#  candidate_id :integer
#  vacancy_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ApplicationsController < ApplicationController
	set_tab :applications

	def application_candidate
		if current_candidate
			@applications = Application.where(candidate_id: current_candidate.id)
		elsif params[:id]
			
			@applications = Application.where(candidate_id: params[:id])
		else
			return
		end	
	end	

	def index
		@applications = Application.all
	end	

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
		params.permit(:candidate_id,:vacancy_id,:state)
	end
end

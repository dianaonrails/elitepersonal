# == Schema Information
#
# Table name: client_requests
#
#  id                 :integer          not null, primary key
#  full_name          :string
#  email              :string
#  phone              :string
#  category_id        :integer
#  message            :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  client_id          :integer
#  gender             :string
#  height             :string
#  weight             :string
#  age_minimum        :integer
#  age_max            :integer
#  marital_status     :string
#  nationality        :string
#  citizenship        :string
#  smoker             :boolean
#  zodiac_sign        :string
#  driving_license    :boolean
#  car                :boolean
#  level_education_id :integer
#  years_experience   :string
#  salary             :integer
#

class ClientRequestsController < ApplicationController
	

	def filtering_params(params)
	end		
	

	def new
		@client_request = ClientRequest.new
		if params[:client].present?
			@client = params[:client]
		else
			@client = Client.new(nil)
		end		
	end


	def create
	    @client_request = ClientRequest.new(client_request_params)

	    respond_to do |format|
	      
	      if @client_request.save

	      	#send email to yana
	   		ClientRequestMailer.candidates_mail(@client_request.client_id,compare_candidates(@client_request.id)).deliver
	      	#check_candidates(@client_request)
	        format.html { redirect_to candidates_path(client_request: @client_request.id), notice: 'Your request was sent. We will answer as soon as possible.' }
	        format.json { render :new, status: :created, location: @client_request }
	      else
	        format.html { render :new }
	        format.json { render json: @client_request.errors, status: :unprocessable_entity }
	      end
	    end
	    #redirect_to new_candidate_path, notice: 'Candidate was successfully created.'
	end

	def client_request_params
      params.require(:client_request).permit(:client_id,:category_id,:gender,:height,:weight,:age_minimum,:age_max,:marital_status,
      	:nationality,:citizenship,:smoker,:zodiac_sign,:driving_license,:car,:level_education_id, 
      	:years_experience,:salary,:availability_ids => [],:available_work_ids =>[], client_resquest_languages_attributes: [:id,:client_request_id,:language_id],
      	:category_question_ids => [])
    end  	
end

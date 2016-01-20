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
		@client_request.nanny_questions.build
		@client_request.driver_questions.build
		@client_request.housekeeper_questions.build
		@client_request.cooker_questions.build
		@client_request.nurse_questions.build
		@client_request.assistance_questions.build
		@client_request.client_resquest_languages.build
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
      	nanny_questions_attributes:[:id,:cooking,:walking,:cleaning,:birth_to_one,:one_to_three,:three_to_six,:regime,
      		:education,:trips,:work_several,:household_help],
      	driver_questions_attributes:[:id,:personal_driver,:family_driver,:children,:washing,:luxury_car,:weapons_bodyguard,:trips,:care_house],
      	housekeeper_questions_attributes:[:id,:dry_wet,:washing,:vip,:furniture,:cooking,:plants_animals,:appliances,:large_areas],
      	governess_questions_attributes:[:five_to_seven,:seven_to_ten,:cooking,:school,:assistant,:foreign_languages,:several_children],
      	nurse_questions_attributes:[:older_people,:ambulant_patients,:immobile_patients,:measurements,:intramuscular_injection,:intravenous_injection,
      		:procedures,:cleaning_cooking],
      	cooker_questions_attributes:[:family,:restaurants,:purchase,:menu,:banquets,:during_banquet,:kids,:diets,:knowledge_kitchen],
      	assistance_questions_attributes:[:dry_wet,:washing_ironing,:vip,:cooking,:systems,:driving,:pool,:small_repairs,:cares,:garden,:plants,:pet_grooming])
    end  	
end
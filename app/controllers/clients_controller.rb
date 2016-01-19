class ClientsController < ApplicationController
  	def new
		@client = Client.new
	end


	def create
	    @client = Client.new(client_params)

	    respond_to do |format|
	      if @client.save
	      	#send email to yana with the suggestions
	      	@candidates = Candidate.where(category_id: @client.category_id)
	      	ClientMailer.client_mail(@client).deliver

	        format.html { redirect_to new_client_path, notice: 'Your request was sent. We will answer as soon as possible.' }
	        format.json { render :new, status: :created, location: @client }
	      else
	        format.html { render :new }
	        format.json { render json: @client.errors, status: :unprocessable_entity }
	      end
	    end
	    #redirect_to new_candidate_path, notice: 'Candidate was successfully created.'
	end

	def client_params
      params.require(:client).permit(:name,:email,:phone,:message,:category_id)
    end
end

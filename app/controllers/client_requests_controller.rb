class ClientRequestsController < ApplicationController

	def new
		@client_request = ClientRequest.new
	end


	def create
	    @client_request = ClientRequest.new(client_request_params)

	    respond_to do |format|
	      if @client_request.save
	        format.html { redirect_to new_client_request_path, notice: 'Your request was sent. We will answer as soon as possible.' }
	        format.json { render :new, status: :created, location: @client_request }
	      else
	        format.html { render :new }
	        format.json { render json: @client_request.errors, status: :unprocessable_entity }
	      end
	    end
	    #redirect_to new_candidate_path, notice: 'Candidate was successfully created.'
	end

	def client_request_params
      params.require(:client_request).permit(:full_name,:email,:phone,:message,:category_id)
    end  	
end
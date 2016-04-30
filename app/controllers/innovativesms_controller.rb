class InnovativesmsController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	@api_key = "zb2ztwc6"
    @auth_token = "k3ee9khd"
    @phone_number = "912247759"

	def process_sms
	    
		params[:client_id]

	    @body = params[:Body]
	    if @body.upcase == 'NO'
	    	render 'process_sms.xml.erb', :content_type => 'text/xml'
	    elsif @body.upcase == "BUSY"
	    	

	    elsif @body.upcase == 'YES' 		
		    
		elsif 
			begin
				DateTime.parse(@body, '%d-%m %H:%M') 
				

			    @twilio_client = Twilio::REST::Client.new @account_sid, @auth_token

			    @twilio_client.account.sms.messages.create(
			      :from => '+14695186374',
			      :to => '',
			      :body => "You have and interview date:" + @body  + " , answer with yes / no / busy"
			    )   
			rescue ArgumentError
				render 'invalid_sms'
			end	
		else
			render 'invalid_sms'
		end

	    #render 'process_sms.xml.erb', :content_type => 'text/xml'
  	end

  	def invalid_sms
  		render 'invalid_sms.xml.erb', :content_type => 'text/xml'
  	end
end
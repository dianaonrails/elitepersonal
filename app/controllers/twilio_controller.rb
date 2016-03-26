class TwilioController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	@account_sid = "AC0e699ed43b732b395508551daf6f2ec6"
    @auth_token = "8ce3b032459789f885e95f207602b04d"
    @twilio_phone_number = "4695186374"

	def process_sms
	    
		params[:client_id]

	    @body = params[:Body]
	    if @body.upcase == 'NO'
	    	render 'process_sms.xml.erb', :content_type => 'text/xml'
	    elsif @body.upcase == "BUSY"
	    	@account_sid = "AC0e699ed43b732b395508551daf6f2ec6"
		    @auth_token = "8ce3b032459789f885e95f207602b04d"
		    @twilio_phone_number = "4695186374"

		    @twilio_client = Twilio::REST::Client.new @account_sid, @auth_token

		    @twilio_client.account.sms.messages.create(
		      :from => '+14695186374',
		      :to => '',
		      :body => "The candidate is busy can you send another date? Respond with 'day-month  hour:minutes'"
		    )

	    elsif @body.upcase == 'YES' 		
		    

		    @twilio_client = Twilio::REST::Client.new @account_sid, @auth_token

		    @twilio_client.account.sms.messages.create(
		      :from => '+14695186374',
		      :to => '',
		      :body => "The interview was confirm by the candidate"
		    )
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

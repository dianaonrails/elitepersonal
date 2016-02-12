require "uri"
require "net/http"
require 'mechanize'
class InterviewsController < ApplicationController
	set_tab :interviews
	skip_before_filter :verify_authenticity_token
	def interviews_candidate
		@interviews = Interview.where(candidate_id: current_candidate)
	end	
	def show
    	@interview = Interview.find(params[:id])
  	end

	def new
		@interview = Interview.new
		@candidate = Candidate.find(params[:candidate])
	end

	def send_text_message(candidate,date,address)
	    number_to_send_to = candidate.mobile

	    account_sid = "AC2c2f241bd727f0fefde2d3126cb37fa5"
	    auth_token = "f500d6adb578f447644ab8cee6561ae4"
	    twilio_phone_number = "308805196"

	    @twilio_client = Twilio::REST::Client.new account_sid, auth_token

	    @twilio_client.account.sms.messages.create(
	      :from => '+447481342039',
	      :to => number_to_send_to,
	      :body => "You have and interview date:#{date}, answer with yes / no / busy"
	    )
  	end


	def create
		@interview = Interview.new(interview_params)
		candidate = Candidate.find(params[:interview][:candidate_id].to_i)
		date = params[:interview][:interview_date]
		address = params[:interview][:address]

		#smsGateway = new SmsGateway('d.r.carvalho89@gmail.com', '3j1B12Nw5')
		#deviceID = '14417'
		#number = '+351912247759'
		#message = 'Hello World!'
		
		agent = Mechanize.new

		

	    respond_to do |format|
	      if @interview.save
	      	#send_text_message(candidate,date,address)
	        #sms_fu.deliver("351912247759","at&t","message")
	        #params = {'email'=>'d.r.carvalho89@gmail.com','password'=>'3j1B12Nw5d','device'=>'14417','number' => '+351912247759',
			#'message'=>'ola'}
			#x = Net::HTTP.post_form(URI.parse('http://smsgateway.me/api/v3/messages/send/'), params)
	        #puts x.body
	        page = agent.post("http://smsgateway.me/api/v3/messages/send",{'email'=>'d.r.carvalho89@gmail.com','password'=>'3j1B12Nw5d','device'=>'15024','number' => candidate.mobile,
			'message'=>'Hello, it´s from ElitePersonalWorld, we are contacting you for an interview, the date:' + @interview.interview_date.strftime("%d/%m/%Y") + ' at ' + @interview.hour + '. Answer with yes / no(because already found a job) / reschedule(another day and hour)'})
	        format.html { redirect_to @interview, notice: 'The interview was schedule we will confirm with you.' }
	        format.json { render :show, status: :created, location: @interview }

	      else
	        format.html { render :new }
	        format.json { render json: @interview.errors, status: :unprocessable_entity }
	      end
    	end	
    end

    def interview_params
    	params.require(:interview).permit(:address,:contact,:interview_date,:hour,:comments,:client_request_id,:candidate_id)
    end	
end	
# == Schema Information
#
# Table name: interviews
#
#  id                :integer          not null, primary key
#  client_request_id :integer
#  candidate_id      :integer
#  interview_date    :date
#  address           :string
#  contact           :string
#  comments          :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  hour              :string
#

require "uri"
require "net/http"
require 'mechanize'
class InterviewsController < ApplicationController
	set_tab :interviews
	#skip_before_filter  :verify_authenticity_token, only: [:connect_guest_to_host_sms]
	#before_action :set_twilio_params, only: [:connect_guest_to_host_sms]
	skip_before_action :verify_authenticity_token if :send_sms?


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

	def send_sms
		agent = Mechanize.new

		puts "*******"
	    agent.post("http://rest.innovativetxt.com/smsapi/index.php",{"to"=>"+351912247759","from"=>"+351912247759","text"=>"bla","api_key"=>"zb2ztwc6","api_secret"=>"k3ee9khd"})
	end

	def send_text_message(candidate,date,address, from)
	    number_to_send_to = candidate.mobile

	    #account_sid = "AC0e699ed43b732b395508551daf6f2ec6"
	    #auth_token = "8ce3b032459789f885e95f207602b04d"
	    

	    #@twilio_client = Twilio::REST::Client.new account_sid, auth_token

	    #@twilio_client.account.sms.messages.create(
	    #  :from => from,
	    #  :to => number_to_send_to,
	    #  :body => "You have and interview date:#{date}, answer with yes / no / busy."
	    #)
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
		
		

		@interview.status = "pending"
		#@interview.provision_phone_number
	    respond_to do |format|
	      if @interview.save
	      	
	      	

	      	#send_text_message(candidate,date,address, @interview.phone_number)
	        #sms_fu.deliver("351912247759","at&t","message")
	        #params = {'email'=>'d.r.carvalho89@gmail.com','password'=>'3j1B12Nw5d','device'=>'14417','number' => '+351912247759',
			#'message'=>'ola'}
			#x = Net::HTTP.post_form(URI.parse('http://smsgateway.me/api/v3/messages/send/'), params)
	        #puts x.body
	        send_sms
	        format.html { redirect_to @interview, notice: 'The interview was schedule we will confirm with you.' }
	        #format.json { render :show, status: :created, location: @interview }

	      else
	        format.html { render :new }
	        format.json { render json: @interview.errors, status: :unprocessable_entity }
	      end
    	end	
    end

    

	def connect_guest_to_host_sms
	    # Guest -> Host
	    @body = params[:Body]
	    if @interview.client.phone == @incoming_phone
	      @outgoing_number = @interview.candidate.mobile

	    # Host -> Guest
	    elsif @interview.candidate.mobile == @incoming_phone
	      @outgoing_number = @interview.client.phone
	    end
	    
	    if @body.upcase == 'NO'
	    	@message = "Candidate is not available"
	    elsif @body.upcase == 'YES'
	    	@message = "Candidate confirmed the interview"
	    	@interview.status = "confirm"
	    elsif @body.upcase == "BUSY"
	    	@message = "The candidate is busy can you send another date? Respond with 'day-month  hour:minutes'"	
	    elsif 
			begin
				DateTime.parse(@body, '%d-%m %H:%M')
				@message = "You have and interview date:" + @body  + " , answer with yes / no / busy"
			rescue ArgumentError
				@message = "invalid message"
			end	
		else
			@message = "invalid message"
		end	
	    				

	    response = Twilio::TwiML::Response.new do |r|
	      r.Message @message, :to => @outgoing_number
	    end
	    render text: response.text
	end

	private

		def respond(message)
	      response = Twilio::TwiML::Response.new do |r|
	        r.Message message
	      end
	      render text: response.text
	    end
	    # Load up Twilio parameters
	    def set_twilio_params
	      @incoming_phone = params[:From]
	      @message = params[:Body]
	      anonymous_phone_number = params[:To]

	      @interview = Interview.where(phone_number: anonymous_phone_number).first
	    end

	    def interview_params
	    	params.require(:interview).permit(:address,:contact,:interview_date,:hour,:comments,:client_request_id,:candidate_id,:client_id)
	    end	
end	

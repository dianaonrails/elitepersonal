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
#  phone_number      :string
#  client_id         :integer
#  status            :string
#

class Interview < ActiveRecord::Base
	belongs_to :candidate
	validates :client_request_id,:candidate_id,:address,:interview_date,:hour, presence: true

	scope :expired, -> { where('interview_date < ?', Date.today) }
	scope :not_expired, -> { where('interview_date > ?', DateTime.now) }


	def candidate
	    @candidate = Candidate.find(self.candidate_id)
	end

	def client
	    @client = Client.find_by(phone: self.contact)
	end

	def expired?
		interview_date < Date.today
	end

	def not_expired?
		interview_date > Date.today
	end	

	def send_message_to_client(message)
	    message = "From #{self.client.name}: #{message}"
	    self.client.send_message_via_sms(message, self.phone)
	end

	def send_message_to_candidate(message)
	    message = "From candidate #{self.candidate.name}: #{message}"
	    self.client.send_message_via_sms(message, self.mobile)
	end

	def confirm!
	    provision_phone_number
	    
	end

	def provision_phone_number
  		account_sid = "AC0e699ed43b732b395508551daf6f2ec6"
	    auth_token = "8ce3b032459789f885e95f207602b04d"
  		@client = Twilio::REST::Client.new account_sid, auth_token
	    begin
	      # Lookup numbers in host area code, if none than lookup from anywhere
	      @numbers = @client.account.available_phone_numbers.get('US').local.list(:area_code => '469')
	      if @numbers.empty?
	        @numbers = @client.account.available_phone_numbers.get('US').local.list()
	      end

	      # Purchase the number & set the application_sid for voice and sms, will
	      # tell the number where to route calls/sms
	      @number = @numbers.first.phone_number
	      @anon_number = @client.account.incoming_phone_numbers.create(
	        :phone_number => @number,
	        :sms_application_sid => 'APfd0d137bb3a9e35be9b5d4104ff860ab'
	      )

	      # Set the reservation.phone_number
	      self.update!(phone_number: @number)

	    rescue Exception => e
	      puts "ERROR: #{e.message}"
	    end
	end
end

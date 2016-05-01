class ReceiveTextController < ApplicationController
  def send_sms 
    # let's pretend that we've mapped this action to 
    # http://localhost:3000/sms in the routes.rb file
    
    message_body = params["Body"]
    from_number = params["From"]

    SMSLogger.log_text_message from_number, message_body
  	account_sid = "AC0e699ed43b732b395508551daf6f2ec6"
    auth_token = "8ce3b032459789f885e95f207602b04d"
    twilio_phone_number = "4695186374"

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token

    @twilio_client.account.sms.messages.create(
      :from => '+14695186374',
      :to => '+351912974512',
      :body => "SEND SMS TO CLIENT"
    )
  end
end
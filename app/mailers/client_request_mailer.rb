class ClientRequestMailer < ActionMailer::Base
	
	def client_mail(candidates,client_request)
		@candidates = candidates
		@client_request = client_request

		@email = ClientRequest.find(client_request).email

		mail(from: 'elitepersonalworld@gmail.com',to: @email, subject: 'Contact Request')
	end	
end

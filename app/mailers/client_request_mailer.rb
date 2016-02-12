class ClientRequestMailer < ActionMailer::Base
	
	default from: "info@elitepersonalworld.com"

	def candidates_mail(client,candidates)
		@candidates = candidates
		@client = Client.find(client)
		@email = 'yana@elitepersonalworld.com'
		mail(to: @email, subject: 'Client Request')
	end		


	def client_mail(candidates,client_request)
		@candidates = candidates
		@client_request = client_request

		@email = ClientRequest.find(client_request).email

		mail(to: @email, subject: 'Contact Request')
	end	
end

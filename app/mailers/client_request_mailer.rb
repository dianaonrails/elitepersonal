class ClientRequestMailer < ActionMailer::Base
	
	default from: "elitepersonalinfo@gmail.com"

	def owner_mail(client_request,candidates)
		@candidates = candidates
		@client_request = client_request

		@email = 'd.r.carvalho89@gmail.com'
		mail(to: @email, subject: 'Client Request')
	end	

	def client_mail(candidates,client_request)
		@candidates = candidates
		@client_request = client_request

		@email = ClientRequest.find(client_request).email

		mail(to: @email, subject: 'Contact Request')
	end	
end

class ClientRequestMailer < ActionMailer::Base
	
	def client_mail(candidates,client_request)
		@candidates = candidates
		@client_request = client_request

		mail(from: 'elitepersonalworld@gmail.com',to: 'd.r.carvalho89@gmail.com', subject: 'Contact Request')
	end	
end

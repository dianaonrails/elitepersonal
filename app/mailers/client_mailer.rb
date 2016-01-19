class ClientMailer < ApplicationMailer

	default from: "elitepersonalinfo@gmail.com"

	def client_mail(client)
		@client = client

		@email = 'd.r.carvalho89@gmail.com'
		mail(from: "elitepersonalinfo@gmail.com",to: @email, subject: 'Client Contact')
	end	
end

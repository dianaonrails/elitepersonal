class ClientMailer < ApplicationMailer

	default from: "info@elitepersonalworld.com"

	def client_mail(client)
		@client = client

		@email = 'yana@elitepersonalworld.com'
		mail(from: "info@elitepersonalworld.com",to: @email, subject: 'Client Contact')
	end	
end

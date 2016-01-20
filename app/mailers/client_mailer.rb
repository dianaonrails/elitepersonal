class ClientMailer < ApplicationMailer

	default from: "elitepersonalinfo@gmail.com"

	def client_mail(client)
		@client = client

		@email = 'info@elitepersonal.ru'
		mail(from: "elitepersonalinfo@gmail.com",to: @email, subject: 'Client Contact')
	end	
end

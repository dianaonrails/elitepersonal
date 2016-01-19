module ApplicationHelper
	
	def age(birthday)
	  now = Time.now.utc.to_date
	  now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
	end
	
	def country_name
	    country = ISO3166::Country[country_code]
	    country.translations[I18n.locale.to_s] || country.name
  	end
	def controller?(*controller)
	    controller.include?(params[:controller])
	end

	def action?(*action)
	    action.include?(params[:action])
	end

	
end

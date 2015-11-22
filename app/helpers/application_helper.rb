module ApplicationHelper
	
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

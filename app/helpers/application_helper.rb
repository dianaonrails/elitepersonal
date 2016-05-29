module ApplicationHelper
	
	def age(birthday)
	  now = Time.now.utc.to_date
	  now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
	end
	
	
	def controller?(*controller)
	    controller.include?(params[:controller])
	end

	def action?(*action)
	    action.include?(params[:action])
	end

	def general_translation(label)
	    @result = ""
	    if session[:locale] == :en
	      puts "english"
	      
	      @result = GeneralTranslation.find_by_label(label).en if !GeneralTranslation.find_by_label(label).nil?
	    else 
	      
	      puts "russian"

	      @result = GeneralTranslation.find_by_label(label).ru if !GeneralTranslation.find_by_label(label).nil?
	    end  

	    return @result
	end 

	def get_image(label)
		@result =""
		@result = Image.find_by_label(label).image.url if !Image.find_by_label(label).blank?

		return @result
	end	

	def get_text(label)
		@result =""
		@result = Image.find_by_label(label).text if !Image.find_by_label(label).blank?

		return @result
	end	
	
end

ActiveAdmin.register ClientRequest do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :full_name,:phone,:email
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	controller do
		def candidates_suggestions(client_request)
			
			@candidates = Candidate.where(category_id: client_request.category_id)
			return @candidates
		end

		def send_mail
			activated_ids = params[:activated].collect {|id| id.to_i} if params[:activated]
			
			@client_request = params[:client_request]
		  	if activated_ids
		  	  @candidates = []	
		  	  activated_ids.each do |id|
        		c = Candidate.find_by_id(id)
        		@candidates << c
        	  end	
	          ClientRequestMailer.client_mail(@candidates,@client_request).deliver
	          redirect_to admin_client_requests_path
	        else  
	          redirect_to admin_client_requests_path
	        end
	    end
	end	

	batch_action :send_email, :only => :show do |ids|
		redirect_to client_requests_path
	end	

	filter :full_name
	filter :email
	filter :phone
	filter :category_id, collection: Category.all

	index do
		selectable_column
		column :full_name
		column :email
		column :phone
		column 'Category' do |client_request|
			Category.find(client_request.category_id).title
		end	
		actions
	end	


	#sidebar :filters, :only => :show do
	  
	#end

	show do
		
		attributes_table_for client_request do

			row :full_name
			row :email
			row :phone
			row  'Category' do
				Category.find(client_request.category_id).title
			end
			row :message
			render 'candidate_suggestions',client_request: client_request
			#panel 'Suggestions' do
			#	table_for Candidate.where(category_id: client_request.category_id),sortable: true do |candidate|
					
			#		column :first_name
			#		column :last_name
			#		column :email
			#		column :nationality
			#		column :birth_date
			#		column() {|candidate| link_to 'View more >', '/admin'+candidate_path(candidate) }	
			#		
			#	end
			#end		
		end
	end		

end

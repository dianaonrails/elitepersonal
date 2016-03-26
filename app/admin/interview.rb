ActiveAdmin.register Interview do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :client_request_id,:candidate_id,:interview_date,:address,:contact,:comments
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	index do
		if Interview.not_expired
			column :address
			column :interview_date
			column :contact
			column :status
			actions
		end	
	end
		
	show do
		attributes_table_for interview do
			row 'Client request' do
				ClientRequest.find(interview.client_request_id)
			end
			row 'Candidate'	do
				Candidate.find(interview.candidate_id)
			end	
			row :interview_date
			row :contact
			row :address
			row :comments
		end
	end		

end

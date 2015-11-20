ActiveAdmin.register ClientRequest do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
	show do
		attributes_table_for client_request do
			row :full_name
			row :email
			row :phone
			row  'Category' do
				Category.find(client_request.category_id).title
			end
			row :message
		end
		panel 'Suggestions' do
			table_for Candidate.where(category_id: client_request.category_id) do |candidate|
				column :first_name
				column :last_name
				column :email
				column :nationality
				column :birth_date
				column() {|candidate| link_to 'Approve', candidate_path(candidate) }
			end	
		end	
	end		

end

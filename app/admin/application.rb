ActiveAdmin.register Application do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :state, :candidate_id, :vacancy_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
	form do |f|
		inputs 'Application' do
			f.input :state
			f.input :candidate_id, as: :select, collection: Candidate.all.map{|u| ["#{u.first_name}", u.id]}
			f.input :vacancy_id,as: :select, collection: Vacancy.all.map{|u| ["#{u.title}", u.id]}
		end	
		actions
	end

	show do
		attributes_table_for application do
			row :state
			row 'Candidate' do
				Candidate.find(application.candidate_id)
			end	
			row 'Vacancy' do
				Vacancy.find(application.vacancy_id)
			end
			row :created_at	
		end	
	end	
end

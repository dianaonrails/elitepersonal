ActiveAdmin.register Candidate do

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
	index do
		column :first_name
		column :last_name
		column :mobile
		column :email
		column :nationality
		actions
	end

	form do |f|
		inputs 'Candidate' do
			input :first_name
			input :last_name
			input :mobile
			input :address
			input :gender
			input :email
			input :height
			input :weight
			input :birth_date
			input :citizenship
			input :nationality
			input :passport
			input :foreign_passport
			input :marital_status, as: :select, collection: ['Single','Married','Divorced','Separated','Widowed','In a relationship','Civil Partnership','Rather not say']
			input :smoker
			input :sign
			input :children
			input :driving_licence
			input :car
			f.inputs 'Education Info' do
				f.semantic_fields_for :education_info_attributes do |e|
					e.inputs do
						e.input :level
						e.input :history
						e.input :languages
					end	
					
				end	
			end
			f.inputs 'Work Info' do
				f.semantic_fields_for :work_info_attributes do |w|
					w.inputs do
						w.input :sectors_experience
						w.input :years_experience
						w.input :current_job
						w.input :last_employer
						w.input :key_skills
						w.input :salary
					end	
					
				end	
			end
		end
		actions
	end	
end

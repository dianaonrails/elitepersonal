ActiveAdmin.register Candidate do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :first_name,:last_name,:mobile,:address,:gender,:email,:height,:weight,:birth_date,
:citizenship,:nationality,:passport,:foreign_passport,:marital_status
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
			f.input :availabilities, :as => :check_boxes, collection: Availability.all, label: "Availability:",member_label: :description
			f.input :available_works, :as =>:check_boxes, collection: AvailableWork.all, label: "Available to work:" ,member_label: :description
			f.input :legal_works,:as => :check_boxes, collection: LegalWork.all,label: "Legal to work:", member_label: :description
			
		end
		actions
	end	

	show do
		panel 'Personal Info' do
			attributes_table_for candidate do
				row :first_name
				row :last_name
				row :gender
				row :mobile
				row :address
				row :email
				row :height
				row :weight
				row :birth_date
				row	:citizenship
				row :nationality
				row :passport
				row :foreign_passport
				row :marital_status
				row :smoker
				row :sign
				row :children
				row :driving_licence
				row :car
			end
		end
		panel 'Work Info' do
			attributes_table_for candidate.work_info do
				row :sectors_experience
				row :years_experience
				row :current_job
				row :last_employer
				row :key_skills
				row :salary
			end
		end
		panel 'Education Info' do
			attributes_table_for candidate.education_info do
				row :level
				row :history
				row :languages
			end	
		end

		panel 'Availability' do
			attributes_table_for candidate.availabilities do
				row :description, title:'Availability'
			end
			attributes_table_for candidate.available_works do
				row :description, title: 'Available to work:'
			end
			attributes_table_for candidate.legal_works do
				row :description, label: 'Legal to work:'
			end	
		end		
	end	
end

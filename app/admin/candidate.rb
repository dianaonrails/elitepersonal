ActiveAdmin.register Candidate do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :photo,:category_id,:first_name,:last_name,:address,:mobile,:email,:citizenship,:birth_date,
        :gender,:height,:weight,:passport,:foreign_passport,:marital_status,:children,:sign,:nationality,
        :smoker, :car,:driving_licence,education_info_attributes:[:level,:history,:languages],work_info_attributes:[:sectors_experience,:years_experience,
          :current_job,:last_employer,:key_skills,:salary],:availability_ids => [],:available_work_ids =>[],:legal_work_ids =>[]
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
	index do
		selectable_column
		column :first_name
		column :last_name
		column :mobile
		column :email
		column :nationality
		actions
	end

	filter :first_name
	filter :last_name
	filter :mobile
	filter :email
	filter :nationality
	filter :citizenship
	filter :address
	filter :birth_date
	filter :marital_status, as: :select, collection: ['Single','Married','Divorced','Separated','Widowed','In a relationship','Civil Partnership','Rather not say']
	filter :smoker
	



	form do |f|

		inputs 'Candidate' do
			f.input :photo,:as => :file, :hint => image_tag(f.object.photo.url(:thumb))
			f.input :cv,:as => :file
			input :category_id, as: :select, collection: Category.all.map{|u| ["#{u.title}", u.id]}
			input :first_name
			input :last_name
			input :mobile
			input :address
			input :gender
			input :email
			input :password
			#input :confirmation_password
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
				row :photo do
					image_tag(candidate.photo.url(:thumb))
				end	
				row :cv do
					link_to('Download File', candidate.cv.url)
				end	
				row 'Category' do
					Category.find(candidate.category_id).title
				end	
				row :first_name
				row :last_name
				row :gender
				row :mobile
				row :address
				row :email
				row :password
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
			  row 'Availabilities' do |n|
			  	n.description
			  end
			   
			end 
			attributes_table_for candidate.available_works do
				row 'Available to work:' do |i|
					i.description
				end	
			end
			attributes_table_for candidate.legal_works do
				row 'Legal to work:' do |i|
					i.description
				end
			end	
		end		
	end	
end

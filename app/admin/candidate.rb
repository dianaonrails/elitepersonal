ActiveAdmin.register Candidate do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :photo,:cv,:category_id,:first_name,:last_name,:country,:city,:address,:password,:mobile,:email,:citizenship,:birth_date,
        :gender,:height,:weight,:passport,:foreign_passport,:marital_status,:children,:sign,:nationality, :years_experience, :salary,
        :smoker, :car,:driving_licence,:level_education_id,candidate_languages_attributes: [:id,:candidate_id,:language_id],education_info_attributes: [:id,:history],
        :work_info_attributes => [:sectors_experience,:current_job,:last_employer,:key_skills],
        :category_question_ids => [],
        :availability_ids => [],:available_work_ids =>[],:legal_work_ids =>[],
        nanny_question_attributes:[:cooking,:walking,:cleaning,:birth_to_one,:one_to_three,:three_to_six,:regime,
          :education,:trips,:work_several,:household_help],
        driver_question_attributes:[:id,:personal_driver,:family_driver,:children,:washing,:luxury_car,:weapons_bodyguard,:trips,:care_house],
        housekeeper_question_attributes:[:id,:dry_wet,:washing,:vip,:furniture,:cooking,:plants_animals,:appliances,:large_areas],
        governess_question_attributes:[:five_to_seven,:seven_to_ten,:cooking,:school,:assistant,:foreign_languages,:several_children],
        nurse_question_attributes:[:older_people,:ambulant_patients,:immobile_patients,:measurements,:intramuscular_injection,:intravenous_injection,
          :procedures,:cleaning_cooking],
        cooker_question_attributes:[:family,:restaurants,:purchase,:menu,:banquets,:during_banquet,:kids,:diets,:knowledge_kitchen],
        assistance_question_attributes:[:dry_wet,:washing_ironing,:vip,:cooking,:systems,:driving,:pool,:small_repairs,:cares,:garden,:plants,:pet_grooming]
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
	action_item only: [:show] do
	  button_tag 'Download File', id:"exportPDF", class:"word-export"
	end

	member_action :download do
	   #candidate = Candidate.find(params[:id])
	   #respond_to do |format|
	   # format.html
	   # format.pdf do
	    #	render pdf: "candidate"
	   # end	
	   #end 	
       #redirect_to :back

	end
	index do
		#download_links: [:pdf]
		selectable_column
		column :id
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

	#filter :marital_status, as: :select, collection: ['Single','Married','Divorced','Separated','Widowed','In a relationship','Civil Partnership','Rather not say']
	#filter :smoker
	



	form(:html => { :multipart => true }) do |f|

		inputs 'Candidate' do
			
			
			f.input :photo,:as => :file, :hint => image_tag(f.object.photo.url(:thumb))
			f.input :cv,:as => :file
			input :category_id, as: :select, collection: Category.all.map{|u| ["#{u.title}", u.id]},:input_html => {:onchange => "CategoryQuestions(this.value);"}
			panel "Category Questions", id:"questions" do
				
			end	
			panel "Nanny Questions", id:"nanny" ,style:"display:none" do
				f.inputs for: [:nanny_question, f.object.nanny_question || NannyQuestion.new] do |builder|
		  			render "layouts/nanny_questions", :f => builder
		  		end	
		  	end	
		  	panel "Driver Questions", id:"driver" , style:"display:none" do
				f.inputs for: [:driver_question, f.object.driver_question || DriverQuestion.new] do |builder|
		  			render "layouts/driver_questions", :f => builder
		  		end	
		  	end
		  	panel "Housekeeper Questions", id:"housekeeper" ,style:"display:none" do
				f.inputs for: [:housekeeper_question, f.object.housekeeper_question || HousekeeperQuestion.new] do |builder|
		  			render "layouts/housekeeper_questions", :f => builder
		  		end	
		  	end	
		  	panel "Cooker Questions", id:"cooker" ,style:"display:none" do
				f.inputs for: [:cooker_question, f.object.cooker_question || CookerQuestion.new] do |builder|
		  			render "layouts/cooker_questions", :f => builder
		  		end	
		  	end	
		  	panel "governess Questions", id:"governess" ,style:"display:none" do
				f.inputs for: [:governess_question, f.object.governess_question || GovernessQuestion.new] do |builder|
		  			render "layouts/governess_questions", :f => builder
		  		end	
		  	end	
		  	panel "Nurse Questions", id:"nurse" ,style:"display:none" do
				f.inputs for: [:nurse_question, f.object.nurse_question || NurseQuestion.new] do |builder|
		  			render "layouts/nurse_questions", :f => builder
		  		end	
		  	end	
		  	panel "Couple Questions", id:"assistance" ,style:"display:none" do
				f.inputs for: [:assistance_question, f.object.assistance_question || AssistanceQuestion.new] do |builder|
		  			render "layouts/assistance_questions", :f => builder
		  		end	
		  	end	

			input :first_name
			input :last_name
			input :mobile
			input :country
			input :city
			input :address
			input :gender
			input :email
			input :password
			#input :confirmation_password
			input :height
			input :weight
			input :birth_date ,order: [:day, :month, :year],start_year:1950
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
				input :level_education_id, as: :select, collection: LevelEducation.all.map{|e| ["#{e.level}",e.id]}
				f.has_many :candidate_languages do |language|
					
				  	language.input :language_id, as: :select, collection: Language.all.map{|l| ["#{l.language}", l.id]}
			 		
			 	end	
			 	
				f.semantic_fields_for :education_info_attributes do |e|
					e.inputs do
						
						e.input :history, as: :text
						
					end	
					
				end	
			end
			f.inputs 'Work Info' do
				
				input :description, as: :text,cols:'60',rows:'5'
				input :years_experience, as: :select, collection: ["0","1","2","+3"]
				f.semantic_fields_for :work_info_attributes do |w|
					w.inputs do
						w.input :sectors_experience,as: :text, cols:"30", rows:"4"
					end	
				end	
				f.input :salary
			end
			f.input :availabilities, :as => :check_boxes, collection: Availability.all, label: "Availability:",member_label: :description
			f.input :available_works, :as =>:check_boxes, collection: AvailableWork.all, label: "Available to work:" ,member_label: :description
			f.input :legal_works,:as => :check_boxes, collection: LegalWork.all,label: "Legal to work:", member_label: :description
		end
		actions
	end	

	show do
		table_for candidate do
			column do
				panel 'Personal Info' do
					attributes_table_for candidate do
						
						row "print" do
							#link_to 'Export PDF',controller: candidate, action: show_pdf, candidate_id: candidate.id
							#button_to_function "Export to PDF",exportPDF() ,id:"info", class:"btn btn-info" 
						end	
						row :photo do
							#candidate.input :photo, :as => :file, :hint => image_tag(candidate.photo.url) 
							image_tag(candidate.photo.url(:thumb))
						end	
						row :cv do
							link_to('Download File', candidate.cv.url)
						end	
						row 'Category' do
							Category.find(candidate.category_id).title

						end
						attributes_table_for candidate.category_questions do
							row 'Category Questions' do |n|
							  	n.question
							end
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
					end
				end
			end
			column do
				panel 'Personal Info' do
					attributes_table_for candidate do			
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
						row :description
						row :years_experience
						row :salary
					end
				end	
			end
			column do
				panel 'Work Info' do
					
					attributes_table_for candidate.work_info do
						row :sectors_experience
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
	end	
end

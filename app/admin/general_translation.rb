ActiveAdmin.register GeneralTranslation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :label, :en, :ru, :page
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	
	index do
		selectable_column
		column :label
		column (:en) { |general_translations| raw(general_translations.en) }
		column :ru
		column :page
		actions
	end		

	form do |f|
		f.inputs 'GeneralTranslations' do
			f.input :label
			f.input :en, :as => :ckeditor
			f.input :ru,  :as => :ckeditor
			f.input :page
		end	
		f.actions
	end	




end

ActiveAdmin.register Image do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :label,:page,:image,:text
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
		column :page
		actions
	end		

	form(:html => { :multipart => true }) do |f|
		f.semantic_errors *f.object.errors.keys
		inputs 'Image' do
			f.input :label
			f.input :page
			f.input :text, label: "Add a text on top of the image(optional):"
			f.input :image,:as => :file, :hint => image_tag(f.object.image.url(:thumb))
		end
		actions
	end		

	show do
		attributes_table_for image do
			row :label
			row :page
			row :text
			row :image do
		        image_tag image.image.url
		    end
		end	
	end	

end

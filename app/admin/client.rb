ActiveAdmin.register Client do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :name, :email, :phone, :message,:category_id
	
	index do
		selectable_column
		column :name
		column "Category" do |client|
			if client.category_id != nil
				Category.find(client.category_id).title
			else
				0
			end	
		end
		column :email
		column :phone
		actions
	end
		
	show do
		attributes_table_for client do
			row :name
			row :email
			row :phone
			row 'Category' do
				Category.find(client.category_id).title
			end
			row :message
		end	
	end		
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end

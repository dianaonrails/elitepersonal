ActiveAdmin.register Vacancy do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :country,:city,:salary,:description,:requirements, :category_id
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

index do
	selectable_column
	column :title
	column :country
	column :city
	actions
end	

filter :title
filter :country
filter :city

form do |f|
	f.input :category_id, label: 'Category Name', as: :select, collection: Category.all
	f.inputs
	f.actions
end	

show do
	attributes_table_for vacancy do
		row :title
		row :country
		row :city
		row :salary
		row :description
		row :requirements
		
		row :created_at
	end	
end
end

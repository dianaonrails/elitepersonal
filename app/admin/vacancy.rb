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

form do |f|
	f.input :category_id, label: 'Category Name', as: :select, collection: Category.all
	f.inputs
	
	
	
	f.actions
end	

end

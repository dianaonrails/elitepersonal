ActiveAdmin.register CategoryQuestion do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :category_id
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
form do |f|
	inputs 'CategoryQuestion' do
		f.input :category_id,as: :select, collection: Category.all.map{|u| ["#{u.title}", u.id]}
		f.input :question
	end
	actions
end		

end

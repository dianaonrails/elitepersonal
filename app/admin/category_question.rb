ActiveAdmin.register CategoryQuestion do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :category_id,:question
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
 	form do |f|
		f.inputs 'CategoryQuestion' do
			input :category_id, as: :select, collection: Category.all.map{|u| ["#{u.title}", u.id]}
			f.input :question
		end
		f.actions
	end


end

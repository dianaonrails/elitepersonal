class AddCategoryIdToNannyQuestion < ActiveRecord::Migration
  def change
    add_column :nanny_questions, :category_id, :integer
  end
end

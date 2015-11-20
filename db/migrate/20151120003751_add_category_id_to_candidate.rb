class AddCategoryIdToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :category_id, :integer
  end
end

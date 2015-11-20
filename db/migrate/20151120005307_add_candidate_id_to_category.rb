class AddCandidateIdToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :candidate_id, :integer
  end
end

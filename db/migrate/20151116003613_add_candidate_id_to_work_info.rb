class AddCandidateIdToWorkInfo < ActiveRecord::Migration
  def change
    add_column :work_infos, :candidate_id, :integer
  end
end

class AddCandidateIdToNannyQuestion < ActiveRecord::Migration
  def change
    add_column :nanny_questions, :candidate_id, :integer
  end
end

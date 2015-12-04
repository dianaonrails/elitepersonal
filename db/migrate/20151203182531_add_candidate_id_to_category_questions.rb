class AddCandidateIdToCategoryQuestions < ActiveRecord::Migration
  def change
    add_column :category_questions, :candidate_id, :integer
  end
end

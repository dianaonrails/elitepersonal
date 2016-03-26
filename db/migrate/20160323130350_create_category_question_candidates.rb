class CreateCategoryQuestionCandidates < ActiveRecord::Migration
  def change
    create_table :category_question_candidates do |t|
      t.integer :category_question_id
      t.integer :candidate_id

      t.timestamps null: false
    end
  end
end

class AddNannyQuestionIdToCategoryQuestion < ActiveRecord::Migration
  def change
    add_column :category_questions, :nanny_question_id, :integer
  end
end

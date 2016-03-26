class AddQuestionEnToCategoryQuestion < ActiveRecord::Migration
  def change
    add_column :category_questions, :question_en, :string
  end
end

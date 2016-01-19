class AddDriverQuestionIdToCategoryQuestion < ActiveRecord::Migration
  def change
    add_column :category_questions, :driver_question_id, :integer
  end
end

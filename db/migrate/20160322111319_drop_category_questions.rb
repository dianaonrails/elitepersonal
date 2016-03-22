class DropCategoryQuestions < ActiveRecord::Migration
  def change
  	drop_table :category_questions
  end
end

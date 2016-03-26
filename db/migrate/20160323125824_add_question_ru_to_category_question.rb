class AddQuestionRuToCategoryQuestion < ActiveRecord::Migration
  def change
    add_column :category_questions, :questions_ru, :string
  end
end

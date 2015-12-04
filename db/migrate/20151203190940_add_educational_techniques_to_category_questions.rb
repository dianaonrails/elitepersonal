class AddEducationalTechniquesToCategoryQuestions < ActiveRecord::Migration
  def change
    add_column :category_questions, :educational_techniques, :text
  end
end

class AddExperienceAgesToCategoryQuestions < ActiveRecord::Migration
  def change
  	add_column :category_questions, :birth_to_one, :boolean
  	add_column :category_questions, :one_to_three, :boolean
  	add_column :category_questions, :three_to_six, :boolean
  	add_column :category_questions, :five_to_seven,:boolean
  	add_column :category_questions, :seven_to_ten, :boolean
  end
end
